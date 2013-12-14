class BillsController < ApplicationController
  def index
  	@bills=Bill.all
  end

  def new
  	@bill=Bill.new
  end

  def create
    
  	@bill = Bill.new(bill_params)   
      if @bill.save
        redirect_to bills_index_path      
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
     # params[:bill]
     # params[:bill][:user_id]=User.find_by_name('#{params[:bill][:user_name]}').id
      params.required(:bill).permit(:user_id, :date, :total_amount)
    end


end
