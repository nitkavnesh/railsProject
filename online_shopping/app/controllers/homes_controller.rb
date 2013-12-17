class HomesController < ApplicationController

  def index
  	@categories = Category.all
  end

  def admin
  	
  end

end
