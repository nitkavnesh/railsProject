class Category < ActiveRecord::Base
	#validation for length of cat_name field of table
	validates :name, presence: true,length: { maximum: 50 }

	#one category can have multiple brands.
	has_many :brands
end
