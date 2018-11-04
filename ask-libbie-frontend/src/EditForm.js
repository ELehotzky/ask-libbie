import React, { Component } from 'react';
import Header from './Header';
  class EditForm extends Component {
      componentDidMount() {
          this.props.pushDataToForm();
      }

      render() {
        const { filteredPlaces, editFormData } = this.props
      return (
          <div>
            <Header />
            <main>
                <form
                    className="main-form"
                    onSubmit={(e) => this.props.addResource(e, this.props.newResourceState)
                }>
                    <label className="form-label">
                    {console.log(filteredPlaces[editFormData].name)}
                        Resource Name:
                        <input
                        className="form-input"
                        id="name" 
                        name="name" 
                        type="text"
                        value={filteredPlaces[editFormData].name}
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
                            value={filteredPlaces[editFormData].address}
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
                            value={filteredPlaces[editFormData].city}
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
                            value={filteredPlaces[editFormData].state}
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
                            value={filteredPlaces[editFormData].zipcode}
                            onChange={(e) => this.props.handleNewResourceChange(e)} 
                        />
                    </label>
                    <label className="form-label">
                        Website:
                        <input
                            className="form-input"
                            id="website" 
                            name="website" 
                            type="text"
                            value={filteredPlaces[editFormData].website}
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
                            value={filteredPlaces[editFormData].description}
                            onChange={(e) => this.props.handleNewResourceChange(e)} 
                        />
                    </label>
                    <label className="form-label">
                        Phone:
                        <input
                            className="form-input"
                            id="phone" 
                            name="phone" 
                            type="text"
                            value={filteredPlaces[editFormData].phone}
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

export default EditForm;
