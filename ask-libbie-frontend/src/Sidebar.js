import React, { Component } from 'react';
import PropTypes from 'prop-types';

export class Sidebar extends Component {
    // static propTypes = {
    //     filteredPlaces: PropTypes.array,
    //     query: PropTypes.string.isRequired,
    //     filter: PropTypes.func.isRequired,
    //     listSelect: PropTypes.func.isRequired
    // }

  render() {
    // const { filteredPlaces, query, filter, listSelect } = this.props;
    return (
        <aside id="sidebar">
            <input
                type="text"
                name="Filter Locations"
                // value={query}
                // onChange={filter}
                placeholder="Filter Locations"
                className="search"
            />
            {/* ternary only renders list if it exists and is greater then 0. Otherwise paragraph is rendered */}
            {/* {filteredPlaces.length > 0 && filteredPlaces ? (
            <ul>
                {filteredPlaces.map( location => (
                <li 
                    key={location}
                    className="locations-list"
                    onClick={() => listSelect(location)}
                    tabIndex="0"
                >
                    {location}
                </li>
                ))}
            </ul>) :
            (<p className="no-results">No Matching Results</p>)
            } */}
            <p className="api-credit">Made with &#x2764; </p>
        </aside>
    );
  }
}

export default Sidebar;
