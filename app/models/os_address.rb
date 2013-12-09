class OsAddress < ActiveRecord::Base
	#validation for the db field
	  validates :add_address, length: { maximum: 256 }
  	validates :add_pincode, length: { maximum: 7 }
  	validates :add_landmark, length: { maximum: 100}
  	validates :add_city, length: { maximum: 45}
  	validates :add_state, length: {maximum: 45}
  	validates :add_country, length:{maximum: 45}

  	# one address can have only one customer
		belongs_to :os_customer
end
