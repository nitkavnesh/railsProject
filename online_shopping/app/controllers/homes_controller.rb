class HomesController < ApplicationController

  def index
  	@categories = Category.all
  end

  def admin
  	
  end

  def subcategory
  	category_id=Category.find_by_name(params[:id]).id
    @categories = Category.where(parent_id: category_id)
    @cat_name = params[:id]
  end

end
