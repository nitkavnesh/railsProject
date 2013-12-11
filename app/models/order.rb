class Order < ActiveRecord::Base
	#validation for field order date of table 
	validates :date, length:{maximum: 45}

 # one order can have only one shipment address
 # one order can only belongs to one user
 # one order can have many products
	belongs_to :shipment_detail
	belongs_to :user
	has_many :order_products
	has_many :products, through: :order_products
end
