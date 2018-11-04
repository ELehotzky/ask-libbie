class Api::V1::ResourcesController < ApplicationController

	def index
		@resources = Resource.all
		render json: @resources
	end

	def create
		resource = Resource.create(resources_params)
		render json: resource
	end

	def show
		resource = Resource.find(params[:id])
		render json: resource
	end

	def update
		resource = Resource.find(params[:id])
    resource.update(resources_params)
    if resource.save
      render json: resource
    else
      render json: { errors: resource.errors.full_messages }
    end
	end

	def destroy
    resource = Resource.find(params[:id])
    resource.destroy
    render json: @resources
	  end

	private

	def resources_params
		params.permit(:name, :address, :city, :state, :zipcode, :website, :description, :phone, :image, :lat, :lng)
	end

	def find_resource
		resources = Resource.find(params[:id])
	end

end
