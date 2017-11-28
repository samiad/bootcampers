class Projects::OngoingsController < ApplicationController
  before_action :set_params

  def new
  end

  def create
    if @project.update(mission_params)
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
    params.require(:project).permit(:title, :description, :price, :category, :agreed_delivery_at, missions_attributes: [:id, :title, :description, :price, :_destroy, skill_ids: []]).merge(scoped_at: DateTime.now)
  end

end
