class Address < ActiveRecord::Base
	# one address belongs to only one user
	belongs_to :user
end
