class OrderProduct < ActiveRecord::Base
	# validation for no. of product quantity in an order
	validates :quantity, length:{maximum: 10}

	# this is association of third table between order and product table
	belongs_to :order
	belongs_to :product
end
