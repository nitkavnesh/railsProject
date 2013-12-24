class Category < ActiveRecord::Base
	has_many :products
	has_many :subcategory, :class_name => "Category", :foreign_key => "parent_id"
  belongs_to :parentcategory, :class_name => "Category"
  has_attached_file :image

  searchable do
    text :name
  end
end