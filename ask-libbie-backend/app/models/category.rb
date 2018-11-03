class Category < ApplicationRecord
	
	has_many: :resource_categories
	has_many: :resources, through: :resource_categories

end