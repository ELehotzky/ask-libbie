import React, { Component } from 'react';
import menu from './menu.svg';
import PropTypes from 'prop-types';

export class Header extends Component {
    static propTypes = {
        toggleMenu: PropTypes.func.isRequired
    }

  render() {
    const { toggleMenu } = this.props;
    return (
        <header>
          <button aria-label="Menu" className="menu-button" onClick={() => toggleMenu()}>
          <div className="menuImg-credit">
            Icons made by 
            <a href="https://www.flaticon.com/authors/cole-bemis" title="Cole Bemis">Cole Bemis</a> 
            from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> 
            is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0">CC 3.0 BY</a>
          </div>
            <img src={menu} className="menu-icon" alt=""></img>
          </button>
          <h1>Ask Libbie</h1>
        </header>
    );
  }
}

export default Header;
