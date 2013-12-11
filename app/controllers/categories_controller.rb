class CategoriesController < ApplicationController
  def index
  end
  #save the data in category table
  def create
  	@category=Category.new(get_category_parameter);
  	p "************************************************************************************"
  	test=Category.where( get_category_parameter ).first
  	if(test==nil)
  	   if @category.save
          flash[:message]=" Category succefully saved"
          render 'index'
          return;
        else 
     	  flash[:message]="category not saved"
     	  render 'index'
     	  return
        end
    else 
   	  flash[:message]="category already exist"
   	  render 'index'
      return
    end
  end 
  private 
  def get_category_parameter 
   params.require(:category).permit(:name);
  end
  def update

  end
  def delete

  end
end
