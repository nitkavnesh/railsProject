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
      total_amount = params[:total_amount]      
  		redirect_to bills_create_path :total_amount => total_amount
      
  	end
  end

  def subcategory
  	category_id=Category.find_by_name(params[:id]).id
    @categories = Category.where(parent_id: category_id)
    @cat_name = params[:id]
  end

  def check_availabilty()
    p "hello"
    msg=''
    session[:temporary_shopping_cart].each do |product_hash|
    p product_id=product_hash.keys[0]
    p available_quantity = ProductDetail.where(product_id: product_id, available: 1).count
    p requested_quantity = product_hash.values[0]
     if (requested_quantity>available_quantity)
      p msg =  "#{msg}#{Product.find(product_id).name} available are #{available_quantity} "
     end
    end
    return msg
  end
end
