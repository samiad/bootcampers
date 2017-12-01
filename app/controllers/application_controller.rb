class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :set_sign_up_role, if: :devise_controller?

  def set_sign_up_role
    session[:role] = params[:as] if params[:as]
  end

  def after_sign_in_path_for(resource)
    if resource.bootcamper?
      missions_path
    elsif resource.client?
      company_projects_path
    elsif resource.leader?
      projects_path
    end
  end

  def default_url_options
    { host: ENV['HOST'] || 'localhost:3000' }
  end

end
