class OsCategory < ActiveRecord::Base
	#one category can have multiple brands.
	has_many :os_brands
end
