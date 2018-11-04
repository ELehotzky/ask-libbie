Rails.application.routes.draw do

	namespace :api do 
		namespace :v1 do 
			resources :resources, :categories, :resource_categories
		end
	end

end
