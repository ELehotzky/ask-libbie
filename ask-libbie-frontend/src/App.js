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
    // .then(resources => console.log(resources))
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
