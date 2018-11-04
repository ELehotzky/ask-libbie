import React, { Component } from 'react';
import Header from './Header';

  class EditForm extends Component {

      render() {
        console.log(this.props.editResourceState)
        // const { filteredPlaces, editFormData, editResourceState } = this.props
      return (
          <div>
            <Header />
            <main>
                <form
                    className="main-form"
                    onSubmit={(e) => this.props.editResource(e, this.props.editResourceState)
                }>
                    <label className="form-label">
                        Resource Name:
                        <input
                        className="form-input"
                        id="name"
                        name="name"
                        type="text"
                        value={this.props.editResourceState.name}
                        onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <label className="form-label">
                        Address:
                        <input
                            className="form-input"
                            id="address"
                            name="address"
                            type="text"
                            value={this.props.editResourceState.address}
                            onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <label className="form-label">
                        City:
                        <input
                            className="form-input"
                            id="city"
                            name="city"
                            type="text"
                            value={this.props.editResourceState.city}
                            onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <label className="form-label">
                        State:
                        <input
                            className="form-input"
                            id="state"
                            name="state"
                            type="text"
                            value={this.props.editResourceState.state}
                            onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <label className="form-label">
                        Zipcode:
                        <input
                            className="form-input"
                            id="zipcode"
                            name="zipcode"
                            type="number"
                            value={this.props.editResourceState.zipcode}
                            onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <label className="form-label">
                        Website:
                        <input
                            className="form-input"
                            id="website"
                            name="website"
                            type="text"
                            value={this.props.editResourceState.website}
                            onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <label className="form-label">
                        Description:
                        <input
                            className="form-input"
                            id="description"
                            name="description"
                            type="text"
                            value={this.props.editResourceState.description}
                            onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <label className="form-label">
                        Phone:
                        <input
                            className="form-input"
                            id="phone"
                            name="phone"
                            type="text"
                            value={this.props.editResourceState.phone}
                            onChange={(e) => this.props.handleEditResourceChange(e)}
                        />
                    </label>
                    <div className='clearfix'></div>
                    <div className="form-group mx-sm-3">
                    <button className="btn btn-primary" onClick={(e) => this.props.editResource(e, this.props.editResourceState)}>Save</button>
                    <button className="btn btn-primary" onClick={(e) => this.props.deleteResource(e, this.props.editResourceState)}>Delete</button>
                    </div>
                    <hr/>
                </form>
                </main>
          </div>
      )
    }
  }

export default EditForm;
