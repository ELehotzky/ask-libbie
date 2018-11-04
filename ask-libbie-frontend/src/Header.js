import React, { Component } from 'react';
// import { Link } from 'react-router-dom';
// import menu from './menu.svg';
import PropTypes from 'prop-types';

export class Header extends Component {
    // static propTypes = {
    //     toggleMenu: PropTypes.func.isRequired
    // }
  render() {
    return (
        <header>
          {/* <Link to="/"> */}
              <a href="http://127.0.0.1:3000/">Back</a>
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
