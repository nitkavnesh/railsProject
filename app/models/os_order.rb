class OsOrder < ActiveRecord::Base
	belongs_to :os_shipment_detail
	belongs_to :os_customer
	has_many :os_order_products
	has_many :os_products, through: :os_order_products
end
