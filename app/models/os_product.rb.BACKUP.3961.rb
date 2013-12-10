class OsProduct < ActiveRecord::Base
	# validation for the fields of order table
<<<<<<< HEAD
	validates :pro_name, length: { maximum: 100 }
	validates :pro_price, length: { maximum: 20 }
	validates :pro_feature, length: { maximum: 256 }
	validates :pro_availability, length: { maximum: 10 }
	#validates :pro_image, length: { maximum: 100 }


=======
	validates :pro_name, presence: true,length: { maximum: 100 }
	validates :pro_price, presence: true,length: { maximum: 20 }
	validates :pro_feature, presence: true,length: { maximum: 256 }
	validates :pro_availability, presence: true,length: { maximum: 10 }
	validates :pro_image,length: { maximum: 100 }
	
>>>>>>> acb4ce43d048a1e47efe53e26ce23e96b15d4111

	# one product can only belongs to one brand
	# one product can be in multiple orders
	belongs_to :os_brand
	has_many :os_order_products
	has_many :os_orders, through: :os_order_products
end
