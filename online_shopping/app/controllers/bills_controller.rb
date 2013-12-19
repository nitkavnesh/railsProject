class BillsController < ApplicationController
  def index
  	@bills=Bill.all
  end

  def new  	
  end

  def create    
    @bill = Bill.new(user_id: current_user.id, date: Time.now, total_amount: params[:total_amount])   
    if @bill.save 
      session[:temporary_shopping_cart].each do |product_hash|
        product_id=product_hash.keys[0]
        @product = Product.find(product_id)       
      p @product_detail_array = ProductDetail.where(product_id: product_id, available: 1).limit(product_hash.values[0]).to_a
        @product_detail_array.each do |product_detail|
          product_detail.available=0
          product_detail.save
          product_detail_id=product_detail.id
          @bill_detail = BillDetail.new(price: @product.price, bill_id: @bill.id , product_id: @product.id, product_detail_id: product_detail_id)
          @bill_detail.save 
        end        
      end
      redirect_to bills_show_path :id => @bill.id      
    end    
  end

  def destroy
    @bill=Bill.find(params[:id])
  	@bill.destroy
    redirect_to bills_path
  end

  def show
    @bill=Bill.find(params[:id])
  end 

end
