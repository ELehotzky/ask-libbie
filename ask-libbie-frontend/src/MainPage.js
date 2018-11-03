import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import Map from './Map';
import Header from './Header';
import Sidebar from './Sidebar';
import './App.css';

class MainPage extends Component {

    render() {
        const { query, menu, toggleMenu } = this.props;
        return (
            <div className="App">
                <Header toggleMenu={toggleMenu} />
                <main>
                    <Map />
                    { menu === true &&
                        <Sidebar
                            query={query}
                            // filter={ evt => {this.filter(evt.target.value)} }
                            // filteredPlaces={filteredPlaces}
                            // listSelect={this.listSelect}
                        />
                    }
                </main>
            </div>
        );
    }
}

export default MainPage;
