import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import { load_google_maps } from './GoogleMapsUtility';
import { apiData } from './API-Data';
import MainPage from './MainPage';
import Form from './Form';
import './App.css';

class App extends Component {
  state = {
    query: '',
    locations: [],
    menu: false,
    newResource: {}
  }

    componentDidMount() {

        let googleMapsPromise = load_google_maps();
        let g = this.getResources();
        Promise.all([
            googleMapsPromise,
            g
        ])
        .then( values => {
            let google = values[0];
            let data = values[1];

            console.log(data);

            this.google = google;
            this.markers = [];

            this.map = new google.maps.Map(document.getElementById('map'), {
                zoom: 10,
                center: {lat: 29.760427, lng: -95.369803},
                scrollwheel: true
            });
        })
        .catch( () => {
            //alerts user if promise fails for any of the promises
            alert('One or more resources could not be retrieved. This app will not be fully functional until all network resources are successfully retrieved.');
        });

    Promise.all([googleMapsPromise]).then(values => {
      let google = values[0];

      this.google = google;
      this.markers = [];

            data.map(value => {
                // this.apiData(pathtoaddressfromobject).then()
            })

    }).catch(() => {
      //alerts user if promise fails for any of the promises
      alert('One or more resources could not be retrieved. This app will not be fully functional until all network resources are successfully retrieved.');
    });

  }

  //show or hide the menu
  toggleMenu = () => {
    const map = document.getElementById('map');

    //add and remove classes that style the map according to whether or not the menu is displayed
    if (this.state.menu === true) {
      map.classList.remove('map-sidebar');
      map.classList.add('map');
    } else {
      map.classList.remove('map');
      map.classList.add('map-sidebar');
    }    //change state of filterMenu boolean based on it's current state which toggles menu rendering
      return this.state.menu === true
      ? this.setState({menu: false})
      : this.setState({menu: true});
  }

    handleNewResourceChange = (e) => {
    let value = e.target.value
    let keyName = e.target.name
    this.setState(state => {
      state.newResource[keyName] = value
      return state
    },() => console.log(this.state))
  }

    apiData = (location) => {
        const key = 'AIzaSyDJMqZM25hyGg92ZEqRI669XlS8u5j14Ic';
        const address = `https://maps.googleapis.com/maps/api/geocode/json?address=${location}&key=${key}`
        return fetch(address)
            .then( res => res.json())
            .catch( err => {
                console.log(err);
            });
    }

  getResources = () => {
    fetch('http://localhost:3000/api/v1/resources/')
    .then(console.log())
    .then(res => res.json())
    // .then(resources => this.cleanLocation(resources))
  }

  // get address from user input and call cleanLocation
  cleanLocation = (resources) => {
    console.log(resources)
    // dynamically get address, city, state from getResources fetch

    // its an array

    // convert string to an array
    const address = '123 Main St.'
    const city = 'Houston'
    const state = 'TX'

    let cleanAdd = address.split(" ")
    cleanAdd = cleanAdd.join("+") + ","

    let cleanCity = city.split(" ")
    cleanCity = "+" + cleanCity.join("+") + ","

    let cleanState = state.split(" ")
    cleanState = "+" + cleanState

    const formatAddress = cleanAdd + cleanCity + cleanState
    console.log(formatAddress)

    this.getLatLng(formatAddress)
  }

  getLatLng = (formatAddress) => {
    let lat
    let lng
    // https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY
    const YOUR_API_KEY = 'AIzaSyDJMqZM25hyGg92ZEqRI669XlS8u5j14Ic';
    // console.log(`https://maps.googleapis.com/maps/api/geocode/json?address=${formatAddress}&key=${YOUR_API_KEY}`)
    fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${formatAddress}&key=${YOUR_API_KEY}`)
    // .then(console.log)
    .then(res => res.json())
    .then(data => {
      lat = data.results[0].geometry.location.lat
      lng = data.results[0].geometry.location.lng
      console.log(lat,lng)
      // check if lat lng already exists should only run once
      this.postLocation(lat,lng)
    })
  }

  postLocation = (lat,lng) => {
    // fetch('http://localhost:3000/api/v1/resources/', {
    //       method: "POST",
    //       body: JSON.stringify({
    //           lat: lat,
    //           lng: lng
    //         }),
    //       headers: {
    //         "Content-Type": "application/json",
    //       }
    //     })
    //   .then(console.log)
      // console.log(lat,lng)
  }

  addResource = (e, newResource) => {
    console.log(e, newResource)
    e.preventDefault()
    fetch('http://localhost:3000/api/v1/resources/', {
          method: "POST",
          body: JSON.stringify(
              newResource
            ),
          headers: {
            "Content-Type": "application/json",
          }
        })
        .then(res => res.json())
        // .then(data => {this.fetchResources()})
        .then(console.log())
  }

    render() {
        const { query, menu, newResource } = this.state;
        return (
            <div>
                <Route exact path="/" render={() => (
                    <MainPage
                        toggleMenu={this.toggleMenu}
                        query={query}
                        menu={menu}
                    />
                )}/>
                <Route exact path="/add-resource" render={()=> (
                  <Form
                    handleNewResourceChange={this.handleNewResourceChange} 
                    newResourceState={newResource}
                    addResource={this.addResource}
                  />
                )}/>
            </div>
        );
    }
}

export default App;
