class Company::ProjectsController < ApplicationController

  def index
    @projects = current_user.company.projects.all
  end

  def Show

  end
end
