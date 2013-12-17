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

  def subcategory
  	category_id=Category.find_by_name(params[:id]).id
    @categories = Category.where(parent_id: category_id)
    @cat_name = params[:id]
  end



end
