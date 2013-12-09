class OsShipmentDetail < ActiveRecord::Base
	# validation for shipment detail table
	validates :shi_name, length: {maximum: 200}
 		validates :shi_address, length: { maximum: 256 }
  	validates :shi_pincode, length: { maximum: 7 }
  	validates :shi_landmark, length: { maximum: 100}
  	validates :shi_city, length: { maximum: 45}
  	validates :shi_state, length: {maximum: 45}
  	validates :shi_country, length:{maximum: 45}
  	validates :shi_phone, length:{in: 10..12}

  	# one shipment address can have multiple orders
	  has_many :os_orders
end
