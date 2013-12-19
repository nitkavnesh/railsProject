class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def new
  	@category=Category.new
  end

  def show
    if user_signed_in?  && current_user.role_id== 1
  	@diff_category = Category.where(:parent_id=>params[:id])
  else
    category_id=Category.find_by_name(params[:id]).id
    @products = Product.where(category_id: category_id)
end
end

  def create
  		@category=Category.new(get_category_parameter).save!
    	redirect_to :categories
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def destroy
  	@category = Category.find(params[:id])
  	@category.destroy
  	redirect_to categories_path
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(get_category_parameter)
      redirect_to categories_path, :notice => "Category has successfully updated"
    else
      render 'edit'
    end
  end

  private 
  def get_category_parameter 
  	params.require(:category).permit(:name, :parent_id, :image);
  end
end
