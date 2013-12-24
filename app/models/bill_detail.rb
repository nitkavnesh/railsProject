class BillDetail < ActiveRecord::Base
	# bill detail belongs to one bill
	# bill detail belogns to one product
	# bill detail belongs to one product detail
	belongs_to :bill
	belongs_to :product
	belongs_to :product_detail
end
