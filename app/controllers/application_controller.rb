class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # hàm configure_permitted_parameters được gọi nếu controller là devise_controller
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from CanCan::AccessDenied do|exception|
    redirect_to root_url,alert:exception.message
  end
  #để cấu hình những tham số cho phép đi qua
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :current_password])
  end 
end
