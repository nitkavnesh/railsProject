class BillsController < ApplicationController
  def index
  	@bills=Bill.all
  end

  def new
  	
  end

  def create
    total_amount=0
    if session[:temporary_shopping_cart]
       bill_id = Bill.last.id + 1
      session[:temporary_shopping_cart].each do |product_id|
        @product = Product.find(product_id)       
        product_detail_id = ProductDetail.find_by_product_id(product_id).id
        @bill_detail = BillDetail.new(price: @product.price, bill_id: bill_id , product_id: @product.id, product_detail_id: product_detail_id)
        @bill_detail.save
        total_amount += @product.price
      end  

  	  @bill = Bill.new(user_id: current_user.id, date: Time.now, total_amount: total_amount)   
      if @bill.save        
        redirect_to bills_show_path :id => @bill.id      
      end  
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

  private
  def bill_params
     
     # params[:bill][:user_id]=User.find_by_name('#{params[:bill][:user_name]}').id
      params.required(:bill).permit(:user_id, :date, :total_amount)
    end

 def display bill

 end

end
