class Brand < ActiveRecord::Base
	#validation for table's name field
	validates :name, presence: true,uniqueness: true,length: { maximum: 50 }

	# one brand can only belongs to one category
	# one brand can have many products
	belongs_to :category
	has_many :products
	
end
