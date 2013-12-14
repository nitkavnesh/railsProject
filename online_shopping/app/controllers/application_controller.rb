class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_filter :update_sanitized_params, if: :devise_controller?


def update_sanitized_params
  devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :name, :phone_no, :role_id)}
end	

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :name , :phone_no) }
  end


  def after_update_path_for(resource)
  session[:domain_prefix] = current_user.domain_prefix
  session[:account_type] = current_user.account_type
  user_path(resource)
end

end
