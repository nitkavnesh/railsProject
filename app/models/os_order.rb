class OsOrder < ActiveRecord::Base
	#validation for field order date of table 
	validates :ord_date, length:{maximum: 45}

 # one order can have only one shipment address
 # one order can only belongs to one customer
 # one order can have many products
	belongs_to :os_shipment_detail
	belongs_to :os_customer
	has_many :os_order_products
	has_many :os_products, through: :os_order_products
end
