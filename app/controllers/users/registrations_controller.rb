class Users::RegistrationsController < Devise::RegistrationsController
  protected

  # Build a devise resource passing in the session. Useful to move
  # temporary session data to the newly created user.
  def build_resource(hash=nil)
    self.resource = resource_class.new_with_session(hash || {}, session)
    self.resource.role = session[:role]
  end

  def after_sign_up_path_for(resource)
    if resource.leader?
      chut_path
    elsif resource.client?
      new_project_path
    else
      bootcamper_path
    end
  end

  def after_sign_in_path_for(resource)
    if resource.leader?
      projects_path
    elsif resource.client?
      new_project_path
    elsif resource.bootcamper?
      missions_path
    end
  end
end
