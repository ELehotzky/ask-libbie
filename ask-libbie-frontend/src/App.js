import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import { load_google_maps } from './GoogleMapsUtility';
import MainPage from './MainPage';
import './App.css';

class App extends Component {
    state = {
        query: '',
        locations: [],
        menu: false
    }

    componentDidMount() {
        let googleMapsPromise = load_google_maps();
        
        Promise.all([
            googleMapsPromise
        ])
        .then( values => {
            let google = values[0];
            
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
        }

        //change state of filterMenu boolean based on it's current state which toggles menu rendering
        return this.state.menu === true ?
            this.setState({ menu: false }) :
            this.setState({ menu: true });
    }

    render() {
        const { query, menu } = this.state;
        return (
            <div>
                <Route exact path="/" render={() => (
                    <MainPage
                        toggleMenu={this.toggleMenu}
                        query={query}
                        menu={menu}
                    />
                )}/>
            </div>
        );
    }
}

export default App;
