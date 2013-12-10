class OsBrand < ActiveRecord::Base
	#validation for table's name field
	validates :br_name, presence: true,length: { maximum: 50 }

	# one brand can only belongs to one category
	# one brand can have many products
	belongs_to :os_category
	has_many :os_products
	
end
