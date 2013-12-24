class ProductDetail < ActiveRecord::Base

# product detail belongs to one product and one bill details
belongs_to :product
belongs_to :bill_detail


end
