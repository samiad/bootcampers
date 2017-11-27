class Company::ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def Show

  end

  def new
    byebug
    @company = Company.new
    @company.projects.build
  end

  def create
    @company = Company.new(company_params)
    @company.save
  #   @company.user = current_user
  #   if @company.save
  #     redirect_to company_path(@company)
  #   else
  #     render :new
  #   end
  # end

  private

  def set_company
    @company = Project.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :siret, :vat_number, :address, :activity_code, :website, project: Project.allowed_params)
  end
end
