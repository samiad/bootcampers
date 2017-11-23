module ApplicationHelper
  def bootcamper?
    session[:role] == "bootcamper"
  end

  def company?
    session[:role] == "company"
  end
end
