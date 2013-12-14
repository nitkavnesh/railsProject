class AddressesController < ApplicationController
  def index
  	@addresses = Address.all
  end

  def new
  	@address = Address.new
  end

  def create
  	@address = Address.new(get_address_parameter).save!
  	redirect_to :addresses
  end

  def show
  	@address = Address.find(params[:id])
  end

  def edit
  	@address = Address.find(params[:id])
  end

  def destroy
  	@address = Address.find(params[:id])
  	@address.destroy
  	redirect_to addresses_path
  end

  def update
    @address = Address.find(params[:id])

    if @address.update_attributes(get_address_parameter)
      redirect_to addresses_path, :notice => "Address has successfully updated"
    else
      render 'edit'
    end
  end

  private 
  def get_address_parameter 
  	params.require(:address).permit(:user_id, :address, :landmark, :city, :state, :country, :pincode);
  end
end
