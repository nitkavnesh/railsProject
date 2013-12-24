class Role < ActiveRecord::Base

	#role has many users
	has_many :users
end
