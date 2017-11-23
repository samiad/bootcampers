class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :set_sign_up_role, if: :devise_controller?

  def set_sign_up_role
    session[:role] = params[:as] if params[:as]
  end
end
