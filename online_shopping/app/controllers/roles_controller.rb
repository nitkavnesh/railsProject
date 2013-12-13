class RolesController < ApplicationController
  def index
  	@roles = Role.all
  end

  def new
		@role = Role.new
  end

  def create
  	@role=Role.new(get_role_parameter).save!
    redirect_to :roles
  end

  def show
  	@role = Role.find(params[:id])
  end

  def edit
  	@role = Role.find(params[:id])
  end

  def destroy
  	@role = Role.find(params[:id])
  	@role.destroy
  	redirect_to :roles
  end

  private 
  def get_role_parameter 
  	params.require(:role).permit(:name, :parent_id);
  end
end
