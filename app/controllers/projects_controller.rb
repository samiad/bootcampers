class ProjectsController < ApplicationController
  # before_action :set_project, only: :show

  def index
    # @projects = current_user.projects
    # @accepted = @projects.accepted
    # @scoped = @projects.scoped
    # @ongoing = @projects.ongoing
    # @delivered = @projects.delivered
    # @paid_off = @projects.where.not(paid_off_at: nil)
    @projects = current_user.projects.all
  end

  def show
    @project = Project.find(params[:id])
    render layout: false
  end

  def new
    @project = Project.new
    @company = current_user.company || Company.new
    # render layout: false
  end

  def create
    @company = current_user.company || current_user.build_company(company_params)
    @project = @company.projects.new(project_params)

    if @company.save && @project.save
      redirect_to company_projects_path, notice: "Votre projet a bien été créé"
    else
      render :new
    end
  end

  private

  # def set_project
  #   @project = Project.find(params[:id])
  #   @projects = Project.where(user_id: current_user)
  #   @accepted = @projects.accepted
  #   @scoped = @projects.scoped
  #   @ongoing = @projects.ongoing
  #   @delivered = @projects.delivered
  #   @paid_off = @projects.where.not(paid_off_at: nil)
  # end

  def company_params
    params.require(:project).require(:company).permit(:name, :siret, :vat_number, :address, :activity_code, :website)
  end

  def project_params
    params.require(:project).permit(:request_title, :request_description, :budget, :request_delivery_at)
  end
end
