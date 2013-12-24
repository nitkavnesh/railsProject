class Bill < ActiveRecord::Base
	# one bill belongs to only one user
	# bill has many product and many bill details
  belongs_to :user
  has_many :products, through: :bill_details
end
