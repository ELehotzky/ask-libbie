class Api::V1::ResourcesController < ApplicationController

	def index
		resources = Resources.all
		render json: resources 
	end



	private

	def resources_params
		params.permit(:name, :address, :city, :state, :zipcode, :website, :description, :phone, :image)
	end

	def find_resource
		resources = Resource.find(params[:id])
	end



end
