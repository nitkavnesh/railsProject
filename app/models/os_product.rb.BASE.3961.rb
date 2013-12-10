class OsProduct < ActiveRecord::Base
	# validation for the fields of order table
	validates :pro_name, length: { maximum: 100 }
	validates :pro_price, length: { maximum: 20 }
	validates :pro_feature, length: { maximum: 256 }
	validates :pro_availability, length: { maximum: 10 }
	validates :pro_image, length: { maximum: 100 }

	# one product can only belongs to one brand
	# one product can be in multiple orders
	belongs_to :os_brand
	has_many :os_order_products
	has_many :os_orders, through: :os_order_products
end
