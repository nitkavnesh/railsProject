class OsCategory < ActiveRecord::Base
	#validation for length of cat_name field of table
	validates :cat_name, length: { maximum: 50 }

	#one category can have multiple brands.
	has_many :os_brands
end
