class AdminsController < ApplicationController
	def index
	end
	def new
	end
	def create
		
		@category = Category.new(category_params)
		if @category.save
		else 
		 	flash[:notice] = "invalid category name"
            render 'index'
		 end
		 @brand=Brand.new(brand_params)
		 if @brand.save
		 else 
		 	flash[:notice] = "invalid brand name"
		 	render 'index'
            return
		 end
          @product=Product.new(product_params)
		 if @product.save
		 	flash[:notice] = "product added successfully created"
		 	render 'index'
		 else
		 	 lash[:notice] = "Invalid product details"
             render 'index'
          end
   end
   private

    def category_params
       params.require(:admins).permit(:cat_name);
    end

     def brand_params
       params.require(:admins).permit(:br_name);
    end

     def product_params
       params.require(:admins).permit(:pro_name,:pro_price,:pro_feature,:pro_availability,:pro_image);
    end

end
