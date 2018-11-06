import React, { Component } from 'react';
// import { Link } from 'react-router-dom';
import back from './left-arrow.svg';
// import PropTypes from 'prop-types';

export class Header extends Component {
    // static propTypes = {
    //     toggleMenu: PropTypes.func.isRequired
    // }
  render() {
    return (
        <header>
              <a href="http://127.0.0.1:3006/" className="back-link">
              {/* <div>Icons made by <a href="https://www.flaticon.com/authors/roundicons" title="Roundicons">Roundicons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div> */}
                <img src={back} alt="" className="menu-icon"></img>
              </a>
            {/* <button aria-label="Back" className="menu-button">
              <img src={menu} className="menu-icon" alt=""></img> 
            </button> */}
          {/* </Link> */}
          <h1>Ask Libbie</h1>
        </header>
    );
  }
}

export default Header;
