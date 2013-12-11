class Product < ActiveRecord::Base
	# validation for the fields of order table
	validates :name, presence: true,length: { maximum: 100 }
	validates :price, presence: true,length: { maximum: 20 }
	validates :feature, presence: true,length: { maximum: 256 }
	validates :availability, presence: true,length: { maximum: 10 }
	validates :image,length: { maximum: 100 }
	

	# one product can only belongs to one brand
	# one product can be in multiple orders
	belongs_to :brand
	has_many :order_products
	has_many :orders, through: :order_products
end
