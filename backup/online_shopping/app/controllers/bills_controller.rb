class BillsController < ApplicationController
  def index
  	@bills=Bill.all
  end

  def new  	
  end

  def create
    @bill = Bill.new(user_id: current_user.id, date: Time.now)   
    if @bill.save
      total_amount=0
      session[:temporary_shopping_cart].each do |product_hash|
        product_id=product_hash.keys[0]
        @product = Product.find(product_id)               
        @product_detail_array = ProductDetail.where(product_id: product_id, available: 1).limit(product_hash.values[0]).to_a
        @product_detail_array.each do |product_detail|
          total_amount += @product.price
          product_detail.available=0
          product_detail.save
          product_detail_id=product_detail.id
          @bill_detail = BillDetail.new(price: @product.price, bill_id: @bill.id , product_id: @product.id, product_detail_id: product_detail_id)
          @bill_detail.save 
        end
        @bill.total_amount=total_amount
        @bill.save!        
      end
      redirect_to bills_show_path :id => @bill.id, address_id: params[:address_id] 
    end    
  end

  def destroy
    @bill=Bill.find(params[:id])
  	@bill.destroy
    redirect_to bills_path
  end

  def show
    @bill=Bill.find(params[:id])
    @address=Address.find(params[:address_id].to_i)
  end 

end
