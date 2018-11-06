import React, { Component } from 'react';
import Header from './Header';
  class AddForm extends Component {
      render() {
      return (
        <div>
            <Header />
            <main>
                <form
                    className="main-form"
                    onSubmit={(e) => this.props.addResource(e, this.props.newResourceState)
                }>
                  <label className="form-label">
                      Resource Name:
                      <input
                      className="form-input"
                      id="name" 
                      name="name" 
                      type="text" 
                      placeholder="Name"
                      onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <label className="form-label">
                      Address:
                      <input
                          className="form-input"
                          id="address"
                          name="address" 
                          type="text" 
                          placeholder="Address" 
                          onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <label className="form-label">
                      City:
                      <input
                          className="form-input"
                          id="city" 
                          name="city" 
                          type="text" 
                          placeholder="Houston" 
                          onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <label className="form-label">
                      State:
                      <input
                          className="form-input"
                          id="state" 
                          name="state" 
                          type="text"  
                          placeholder="TX" 
                          onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <label className="form-label">
                      Zipcode:
                      <input
                          className="form-input"
                          id="zipcode" 
                          name="zipcode" 
                          type="number"  
                          placeholder="Zipcode" 
                          onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <label className="form-label">
                      Website:
                      <input
                          className="form-input"
                          id="website" 
                          name="website" 
                          type="url"  
                          placeholder="Website" 
                          onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <label className="form-label">
                      Description:
                      <input
                          className="form-input"
                          id="description" 
                          name="description"
                          type="text" 
                          placeholder="Description" 
                          onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <label className="form-label">
                      Phone:
                      <input
                          className="form-input"
                          id="phone" 
                          name="phone" 
                          type="tel"  
                          placeholder="Phone" 
                          onChange={(e) => this.props.handleNewResourceChange(e)} 
                      />
                  </label>
                  <div className='clearfix'></div>
                  <div className="form-group mx-sm-3">
                    <button className="btn btn-primary" onClick={(e) => this.props.addResource(e, this.props.newResourceState)}>Save</button>
                    <button className="btn btn-primary" onClick={() =>console.log("Cancel")}>Cancel</button>
                  </div>
                  <hr/>
                </form>
                </main>
          </div>
      )
    }
  }

export default AddForm;
