class AdminsController < ApplicationController
	def index
	end
	def new
	end
	def create
		
		@os_category = OsCategory.new(os_category_params)
		if @os_category.save
		else 
		 	flash[:notice] = "invalid category name"
            render 'index'
		 end
		 @os_brand=OsBrand.new(os_brand_params)
		 if @os_brand.save
		 else 
		 	flash[:notice] = "invalid brand name"
		 	render 'index'
            return
		 end
          @os_product=OsProduct.new(os_product_params)
		 if @os_product.save
		 	flash[:notice] = "product added successfully created"
		 	render 'index'
		 else
		 	 lash[:notice] = "Invalid product details"
             render 'index'
          end
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
