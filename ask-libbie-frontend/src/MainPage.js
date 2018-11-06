import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Map from './Map';
import MainHeader from './MainHeader';
import Sidebar from './Sidebar';
import './App.css';

class MainPage extends Component {
    static propTypes = {
        toggleMenu: PropTypes.func.isRequired,
        menu: PropTypes.bool.isRequired,
        query: PropTypes.string.isRequired
    }

    render() {
        const { query, menu, toggleMenu, filter, filteredPlaces, listSelect, detailsBool, detailsID } = this.props;
        return (
            <div className="App">
                <MainHeader toggleMenu={toggleMenu} />
                <main>
                    <Map />
                    { menu === true &&
                        <Sidebar
                        handleFilterTerm={this.props.handleFilterTerm}
                        handleSelectEditResource={this.props.handleSelectEditResource}
                            query={query}
                            filter={filter}
                            filteredPlaces={filteredPlaces}
                            listSelect={listSelect}
                            detailsBool={detailsBool}
                            detailsID={detailsID}
                        />
                    }
                </main>
            </div>
        );
    }
}

export default MainPage;
