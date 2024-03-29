class ProductDetailsController < ApplicationController
  def index
  	@product_details = ProductDetail.all
  end

  def new
  	@product_detail = ProductDetail.new
  end

  def create
  	@product_detail = ProductDetail.new(get_product_detail_parameter).save!
  	redirect_to product_details_path
  end

  def show
  	@product_detail = ProductDetail.find(params[:id])
  end

  def edit
  	@product_detail = ProductDetail.find(params[:id])
  end

  def destroy
  	@product_detail = ProductDetail.find(params[:id])
  	@product_detail.destroy
  	redirect_to product_details_path
  end

  def update
    @product_detail = ProductDetail.find(params[:id])

    if @product_detail.update_attributes(get_product_detail_parameter)
      redirect_to product_details_path, :notice => "Product Detail has successfully updated"
    else
      render 'edit'
    end
  end

  private 
  def get_product_detail_parameter 
  	params.require(:product_detail).permit(:product_id, :unique_id);
  end
end
