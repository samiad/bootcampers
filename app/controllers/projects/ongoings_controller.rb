class Projects::OngoingsController < ApplicationController
  before_action :set_params

  def new
  end

  def create
    mp = mission_params
    mp[:agreed_delivery_at] = Date::strptime(mp[:agreed_delivery_at],"%Y-%m-%d")
    if @project.update(mp)
      redirect_to projects_path
    else
      flash[:error] = "Désolé, cela n'a pas fonctionné"
      render :new
    end
  end

  def set_params
    @project = Project.find(params[:project_id])
  end
  def mission_params
    params.require(:project).permit(:title, :description, :price, :category, :agreed_delivery_at, missions_attributes: [:id, :title, :description, :price, :_destroy]).merge(scoped_at: DateTime.now)
  end

end
