class BillDetail < ActiveRecord::Base
	belongs_to :bill
	belongs_to :product
	belongs_to :product_detail
end
