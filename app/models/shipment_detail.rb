class ShipmentDetail < ActiveRecord::Base
	# validation for shipment detail table
	validates :name, length: {maximum: 200}
 		validates :address, length: { maximum: 256 }
  	validates :pincode, length: { maximum: 7 }
  	validates :landmark, length: { maximum: 100}
  	validates :city, length: { maximum: 45}
  	validates :state, length: {maximum: 45}
  	validates :country, length:{maximum: 45}
  	validates :phone, length:{in: 10..12}

  	# one shipment address can have multiple orders
	  has_many :orders
end
