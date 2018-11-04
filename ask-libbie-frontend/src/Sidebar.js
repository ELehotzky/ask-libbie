import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import PropTypes from 'prop-types';
import edit from './edit.svg';


export class Sidebar extends Component {
    // static propTypes = {
    //     filteredPlaces: PropTypes.array,
    //     query: PropTypes.string.isRequired,
    //     filter: PropTypes.func.isRequired,
    //     listSelect: PropTypes.func.isRequired
    // }

  render() {
    const { filteredPlaces, query, filter, listSelect, detailsBool, match } = this.props;
    return (
        <aside id="sidebar">
            <input
                type="text"
                name="Filter Locations"
                value={query}
                onChange={filter}
                placeholder="Filter Locations"
                className="search"
            />
            {/* ternary only renders list if it exists and is greater then 0. Otherwise paragraph is rendered */}
            {filteredPlaces.length > 0 && filteredPlaces ? (
            <ul>
                {/* {console.log(filteredPlaces)} */}
                {filteredPlaces.map( (location, index) => (
                    <li
                    key={location.name}
                    className="locations-list"
                    onClick={() => listSelect(location.name)}
                    tabIndex="0"
                    >
                    {location.name}
                    <Link to="/edit-resource">
                        <button className="edit-btn">
                        <div className="menuImg-credit">
                            Icons made by <a href="http://www.freepik.com" title="Freepik">Freepik</a>
                            from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
                            is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" 
                            title="Creative Commons BY 3.0">CC 3.0 BY</a>
                        </div>
                            <img src={edit} className="edit-icon" alt=""></img>
                        </button>
                    </Link>
                    {detailsBool === true && (
                        <div className="additional-info">
                            <p>{location.description}</p>
                            <p>Address: {location.address} {location.city}, {location.state} {location.zipcode}</p>
                            <p>Phone #: {location.phone}</p>
                            <p><a href={location.website}>Visit Site</a></p>
                        </div>
                    )}
                </li>
                ))}
            </ul>) :
            (<p className="no-results">No Matching Results</p>)
            }
            <p className="api-credit">Made with &#x2764; </p>
        </aside>
    );
  }
}

export default Sidebar;
