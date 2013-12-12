class CategoriesController < ApplicationController
  def index
     @categories=Category.all
  end
  def new
    Category.new
  end
  def show 
     
  end
 
  def create
  	@category=Category.new(get_category_parameter);
  	respond_to do |format|
      if @category.save
        format.html { redirect_to @user, notice: 'category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category
         }
      else
        format.html { render action: 'new' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
   def update
    respond_to do |format|
      if @category.update(get_category_parameter)
        format.html { redirect_to @category, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end













  private 
  def get_category_parameter 
   params.require(:category).permit(:name);
  end
end
