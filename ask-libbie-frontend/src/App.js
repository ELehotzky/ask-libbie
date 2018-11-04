import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import { load_google_maps } from './GoogleMapsUtility';
// import { getResources } from './API-Data';
import { allResources } from './API-Data';
import MainPage from './MainPage';
import AddForm from './AddForm';
import EditForm from './EditForm';
import './App.css';

class App extends Component {
  state = {
    query: '',
    locations: [],
    locationsCopy: [],
    editFormTest: '',
    editFormData: 0,
    menu: false,
    newResource: {},
    detailsBool: false
  }

    componentDidMount() {

        let googleMapsPromise = load_google_maps();
        let g = allResources;

        // console.log(g)
        Promise.all([
            googleMapsPromise,
            g
        ])
        .then( values => {

            let google = values[0];
            let data = values[1];

            // console.log(data);

            this.google = google;
            this.markers = [];

            this.infowindow = new google.maps.InfoWindow();
            this.map = new google.maps.Map(document.getElementById('map'), {
                zoom: 10,
                center: {lat: 29.760427, lng: -95.369803},
                scrollwheel: true
            });

            // console.log(data.resources)

            //iterate over the locations returned by the foursquare api to create map markers
            data.resources.map( location => {
              let marker = new google.maps.Marker({
                position: { lat: location.lat, lng: location.lng },
                map: this.map,
                city: location.city,
                state: location.state,
                name: location.name,
                addr: location.address,
                phone: location.phone,
                website: location.website,
                zipcode: location.zipcode,
                description: location.description,
                animation: google.maps.Animation.DROP
            });

            //this event listener handles animations for when markers are clicked on map
            marker.addListener('click', () => {
              if (marker.getAnimation() !== null) {
                  marker.setAnimation(null);
              } else {
                  marker.setAnimation(google.maps.Animation.BOUNCE);
              }
              setTimeout( () => { marker.setAnimation(null) }, 2000);
            });

            //setting original locations array based on each place returned from the api
            this.setState( prevState => ({
              locations: [...prevState.locations, location]
            }));
          
          //this event listener handles creating info window and map events on click of map marker
          google.maps.event.addListener(marker, 'click', () => {
            this.infowindow.setContent(`<div class="info"><p>${marker.name}</p> <p>${marker.addr}</p> <p><a href="${marker.website}">Visit Site</a></p></div>`);
            this.map.setZoom(14);
            this.map.setCenter(marker.position);
            this.infowindow.open(this.map, marker);
            this.map.panBy(0, -125);
          });

          this.markers.push(marker);
          return null;
          });

          //this makes a copy of locations array
          this.setState({
            locationsCopy: this.state.locations
          });
        })
        .catch( () => {
            //alerts user if promise fails for any of the promises
            alert('One or more resources could not be retrieved. This app will not be fully functional until all network resources are successfully retrieved.');
        });
    }

  //function for filtering current list of places on map.
  filter = query => {
    //show only locations on the list that contain characters within the query
    let filteredLocations = this.state.locations.filter( location => {
        return location.name.toLowerCase().includes(query.toLowerCase());
    });

    //show only markers on map that contain characters  of the name within the query
    this.markers.filter( marker => {
        return marker.name.toLowerCase().includes(query.toLowerCase()) === true ?
            marker.setVisible(true) :
            marker.setVisible(false);
    });

    //set copy of filtered places array to only display matching names
    this.setState({
      locationsCopy: filteredLocations,
        query
    });
    return null;
}

  //when a list item is clicked the corresponding marker is selected
  listSelect = selected => {
    //check for selection to match existing marker
    let marker = this.markers.filter( mark => mark.name === selected)[0];
    this.infowindow.setContent(`<div class="info"><p>${marker.name}</p> <p>${marker.addr}</p> <p><a href="${marker.website}">Visit Site</a></p></div>`);
    this.map.setCenter(marker.position);
    this.infowindow.open(this.map, marker);
    this.map.panBy(0, -125);

    if (this.state.detailsBool === true) {
     this.setState({ detailsBool: false });
    } else {
      this.setState({ detailsBool: true });
    }

    this.setState({ editFormTest: marker.name });

    //animation for markers triggered by list item selection
    if (marker.getAnimation() !== null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(this.google.maps.Animation.BOUNCE);
    }
    setTimeout( () => { marker.setAnimation(null) }, 2000);
  }

  match = selected => {
    let marker = this.markers.filter( mark => mark.name === selected)[0];
    console.log(marker);
    return marker;
  }

  pushDataToForm = () => {
    // let marker = this.markers;
    const { locationsCopy , editFormTest, editFormData } = this.state;
    for(let i= 0; i < locationsCopy.length; i++) {
      if (editFormTest === locationsCopy[i].name ) {
        let num = i;
        console.log("num: " + num)
        this.setState({ editFormData: num })
        console.log("editFormData: " + editFormData)
      }
    }
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

  // getResources = () => {
  //   fetch('http://localhost:3003/api/v1/resources/')
  //   .then(res => console.log(res))
  //   // .then(res => res.json())
  //   // .then(resources => resources)
  //   .then(resources => this.cleanLocation(resources))
  // }

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
        const { query, menu, newResource, locationsCopy, detailsBool, editFormData } = this.state;
        return (
            <div>
                <Route exact path="/" render={() => (
                    <MainPage
                        toggleMenu={this.toggleMenu}
                        query={query}
                        menu={menu}
                        filter={ evt => {this.filter(evt.target.value)} }
                        filteredPlaces={locationsCopy}
                        listSelect={this.listSelect}
                        detailsBool={detailsBool}
                        match={ evt => {this.match(evt.target.value)} }
                    />
                )}/>
                <Route exact path="/add-resource" render={()=> (
                  <AddForm
                    handleNewResourceChange={this.handleNewResourceChange} 
                    newResourceState={newResource}
                    addResource={this.addResource}
                  />
                )}/>
                <Route exact path="/edit-resource" render={()=> (
                  <EditForm
                    handleNewResourceChange={this.handleNewResourceChange} 
                    newResourceState={newResource}
                    addResource={this.addResource}
                    filteredPlaces={locationsCopy}
                    pushDataToForm={this.pushDataToForm}
                    editFormData={editFormData}
                  />
                )}/>
            </div>
        );
    }
}

export default App;
