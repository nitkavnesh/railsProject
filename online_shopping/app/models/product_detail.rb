class ProductDetail < ActiveRecord::Base

belongs_to :product
belongs_to :bill_detail

end
