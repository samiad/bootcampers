class Projects::DeliveredsController < ApplicationController
  before_action :set_project, only: :create

  def create
    if @project.delivered_at == nil
      @project.delivered_at = DateTime.now
      if @project.save
        flash[:success] = "Le projet #{@project.title} est livré!"
        redirect_to projects_path
      else
        flash[:error] = "Désolé, la demande n'a pas été prise en compte"
      end
    end
  end

 private

  def set_project
    @project = Project.find(params[:project_id])
  end

end
