class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_order

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :full_name, ])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :full_name, ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :full_name, ])
  end
end
