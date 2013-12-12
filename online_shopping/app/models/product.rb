class Product < ActiveRecord::Base
belongs_to :category
has_many :bills, :through => :bill_details
has_many :product_details
end
