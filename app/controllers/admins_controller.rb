class AdminsController < ApplicationController
	def index
	end
	def new
	end
	def create
		
		@os_category = OsCategory.new(os_category_params)
		 @os_category.save
		 @os_brand=OsBrand.new(os_brand_params)
		 @os_brand.save
		 @os_product=OsProduct.new(os_product_params)
		 @os_product.save
		 
	end
   private

    def os_category_params
       params.require(:admins).permit(:cat_name);
    end

     def os_brand_params
       params.require(:admins).permit(:br_name);
    end

     def os_product_params
       params.require(:admins).permit(:pro_name,:pro_price,:pro_feature,:pro_availability,:pro_image);
    end

end
