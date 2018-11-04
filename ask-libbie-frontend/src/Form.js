import React, { Component } from 'react'
  class Form extends Component {
      render() {
      return (
        <form onSubmit={(e) => this.props.addResource(e, this.props.newResourceState)}>
        Resource Name:&nbsp;
        <input id="name" name="name" type="text" placeholder="Name" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        Address:&nbsp;
        <input id="address" name="address" type="text" placeholder="Address" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        City:&nbsp;
        <input id="city" name="city" type="text" placeholder="Houston" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        State:&nbsp;
        <input id="state" name="state" type="text"  placeholder="TX" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        Zipcode:&nbsp;
        <input id="zipcode" name="zipcode" type="number"  placeholder="Zipcode" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        Website:&nbsp;
        <input id="website" name="website" type="text"  placeholder="Website" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        Description:&nbsp;
        <input id="description" name="description" type="text"  placeholder="Description" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        Phone:&nbsp;
        <input id="phone" name="phone" type="text"  placeholder="Phone" onChange={(e) => this.props.handleNewResourceChange(e)} /><br/>
        <div className='clearfix'></div>
        <div className="form-group mx-sm-3">
          <button className="btn btn-primary" onClick={(e) => this.props.addResource(e, this.props.newResourceState)}>Save</button>
          <button className="btn btn-primary" onClick={() =>console.log("Cancel")}>Cancel</button>
        </div>
        <hr/>
        </form>
      )
    }
  }

export default Form;
