class BrandsController < ApplicationController
  def index
  end
  #insert into brand table
  def create
     test=Category.where(get_category_parameter).first
  	if(test==nil)
  	  flash[:message]="category does not exist"
  	  render 'index'
  	  return 
  	else
  	  test=Brand.where(get_brand_parameter).first
  	  if(test==nil)
         @brand=brand.new(get_brand_parameter) ;
         @brand.save
         flash[:message]="brand already exist"
         render 'index'
         rerurn;
      else
            flash[:message]="brand already exist"
  		    render 'index'
  		    return 

       end
     end
  end
  private
  def get_category_parameter
    params.require(:brand).permit(:name)
  end
  def get_brand_parameter
  	params.require(:brand).permit(:brand_name)
  end
end
