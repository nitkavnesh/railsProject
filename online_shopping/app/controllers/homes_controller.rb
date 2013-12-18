class HomesController < ApplicationController

  def index
  	@categories = Category.all
  end

  def show
  	@product = Product.find(1)
  end
 
  def generate_bill
  	if !user_signed_in?
  		redirect_to new_user_session_path
  	else
  		redirect_to bills_create_path
  	end
  end

  def subcategory
    p params[:id]
  	category_id=Category.find_by_name(params[:id]).id
    @categories = Category.where(parent_id: category_id)
    @products = Product.where(category_id: category_id)
    @cat_name = params[:id]
  end

  def category_product
    category_id=Category.find_by_name(params[:id]).id
    @products = Product.where(category_id: category_id)
    @cat_name = params[:id]
  end

  def product_info
    product_id=Product.find_by_name(params[:id]).id
    @product = Product.find(product_id)
  end
end
