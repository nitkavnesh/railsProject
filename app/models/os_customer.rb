class OsCustomer < ActiveRecord::Base
	has_many :os_addresses
	has_many :os_orders
end
