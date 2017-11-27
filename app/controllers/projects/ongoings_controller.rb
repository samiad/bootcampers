class Projects::OngoingsController < ApplicationController
  before_action :set_params

  def new
  end

  def create
    @project.request_title == mission_params[:title]? @project.title = @project.request_title : @project.title = mission_params[:title]
    @project.request_description == mission_params[:description]? @project.description = @project.request_description : @project.description = mission_params[:description]
    @project.budget == mission_params[:price]? @project.price = @project.budget : @project.price = mission_params[:price]
    @project.request_delivery_at == mission_params[:agreed_delivery_at]? @project.agreed_delivery_at = @project.request_delivery_at : @project.agreed_delivery_at = mission_params[:agreed_delivery_at]
    @project.category = mission_params[:category]
    @project.scoped_at = DateTime.now
    @missions = mission_params[:missions_attributes].to_h.values
    if @project.save
      @missions.each do |m|
        Mission.create(project_id: @project.id, title: m[:title], description: m[:description], price: m[:price] )
      end
      redirect_to projects_path
    else
      flash[:error] = "Désolé, cela n'a pas fonctionné"
    end
  end

  def set_params
    @project = Project.find(params[:project_id])
  end
  def mission_params
    params.require(:project).permit(:title, :description, :price, :category, :agreed_delivery_at, missions_attributes: [:id, :title, :description, :price, :_destroy])
  end

end
