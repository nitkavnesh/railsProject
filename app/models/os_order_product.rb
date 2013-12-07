class OsOrderProduct < ActiveRecord::Base
	belongs_to :os_order
	belongs_to :os_product
end
