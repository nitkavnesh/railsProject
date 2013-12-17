class HomesController < ApplicationController

  def index  	
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



end
