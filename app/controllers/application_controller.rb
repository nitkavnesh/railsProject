class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

protected

def after_update_path_for(resource)
  session[:domain_prefix] = current_os_customer.domain_prefix
  session[:account_type] = current_os_customer.account_type
  os_customer_path(resource)
end


end
