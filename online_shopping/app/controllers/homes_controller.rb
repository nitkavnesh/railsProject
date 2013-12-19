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

  def add_in_cart
    product_id=params[:id]
    if !session[:temporary_shopping_cart]
      session[:temporary_shopping_cart] =[]  
    end 
    flag=0 
    session[:temporary_shopping_cart].each do |product_hash| 
      if (product_hash.has_key?(product_id)) 
        flag=1 
        product_hash[product_hash.keys[0]]=product_hash.values[0]+1 
      end  
    end  
    if flag==0 
      session[:temporary_shopping_cart] << {product_id => 1}  
    end
  end
end
