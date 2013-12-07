class OsProduct < ActiveRecord::Base
	belongs_to :os_brand
	has_many :os_order_products
	has_many :os_orders, through: :os_order_products
end
