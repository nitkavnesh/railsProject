class Product < ActiveRecord::Base
belongs_to :category
has_many :bills, :through => :bill_details
has_many :product_details
has_attached_file :image
  def to_param
  	p category
  	category.name
  end
end
