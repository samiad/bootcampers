class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.bootcamper?
      missions_path
    elsif resource.client?
      company_projects_path
    elsif resource.leader?
      projects_path
    end
  end

end
