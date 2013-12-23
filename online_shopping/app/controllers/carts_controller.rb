class CartsController < ApplicationController
  def index
 
  end

  def destroy

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
   product_id=params[:product_id].to_i  
   p session[:temporary_shopping_cart].delete_if {|hash| hash.keys[0].to_i == product_id }          
  end

  def show
  end
end
