class Api::V1::ResourcesController < ApplicationController

	def index
		resources = Resource.all
		render json: resources
	end

	def create
		resource = Resource.create(resources_params)
		render json: resource
	end

	private

	def resources_params
		params.permit(:name, :address, :city, :state, :zipcode, :website, :description, :phone, :image, :lat, :lng)
	end

	def find_resource
		resources = Resource.find(params[:id])
	end

end
