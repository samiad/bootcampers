module ApplicationHelper
  def bootcamper?
    session[:role] == "bootcamper"
  end

  def client?
    session[:role] == "client"
  end
end
