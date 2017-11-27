class Company::ProjectsController < ApplicationController

  def index
    @projects = current_user.company.projects.all
  end

  def show
    @project = Project.find(params[:id])
    render layout: false
  end
end
