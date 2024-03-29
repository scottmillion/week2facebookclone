class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :sanitize_devise_params, if: :devise_controller?

  def sanitize_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image_url,:bio])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:image_url,:bio])

  end

  def show

  end

end
