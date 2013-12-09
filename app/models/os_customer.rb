class OsCustomer < ActiveRecord::Base
	#validation for the fields of os_customer table
	validates :cus_name, length: { maximum: 150 }
  validates :cus_email: { maximum: 200 }
  validates :cus_phone_no, length: { in: 10..12 }
  validates :cus_password, length: { maximum: 15 }

# one customer can have many addresses
#one customer can have many orders
	has_many :os_addresses
	has_many :os_orders
end
