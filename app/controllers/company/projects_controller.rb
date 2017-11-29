class Company::ProjectsController < ApplicationController

  def index
    @projects = current_user.company.projects.all
  end

  def show
    @project = Project.find(params[:id])
    render layout: false

    # rescue Stripe::CardError => e
    #   flash[:alert] = e.message
    #   redirect_to project_path(@project)
    #
    # redirect_to project_signedoffs_path(@project)
  end
end
