class ProjectsController < ApplicationController
  before_action :set_project, only: :show

  def index
    @projects = current_user.projects
  end

  def show
  end

  def new
    @project = Project.new
    @company = current_user.company || Company.new
  end

  def create
    @company = current_user.company || current_user.build_company(company_params)
    @project = @company.projects.new(project_params)

    if @company.save && @project.save
      redirect_to root_path, notice: "YOUPI"
    else
      # byebug
      render :new
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def company_params
    params.require(:project).require(:company).permit(:name, :siret, :vat_number, :address, :activity_code, :website)
  end

  def project_params
    params.require(:project).permit(:request_title, :request_description, :budget, :request_delivery_at)
  end
end
