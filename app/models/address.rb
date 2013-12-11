class Address < ActiveRecord::Base
	#validation for the db field
	  validates :address, length: { maximum: 256 }
  	validates :pincode, length: { maximum: 7 }
  	validates :landmark, length: { maximum: 100}
  	validates :city, length: { maximum: 45}
  	validates :state, length: {maximum: 45}
  	validates :country, length:{maximum: 45}

  	# one address can have only one user
		belongs_to :user
end
