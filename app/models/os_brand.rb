class OsBrand < ActiveRecord::Base
	# one brand can only belongs to one category
	belongs_to :os_category
	has_many :os_products
end
