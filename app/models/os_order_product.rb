class OsOrderProduct < ActiveRecord::Base
	# validation for no. of product quantity in an order
	validates :op_quantity, length:{maximum: 10}

	# this is association of third table between order and product table
	belongs_to :os_order
	belongs_to :os_product
end
