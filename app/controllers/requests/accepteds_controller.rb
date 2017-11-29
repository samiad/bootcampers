class Requests::AcceptedsController < ApplicationController
  before_action :set_project, only: :create

  def create
    if @accepted.accepted_at == nil
      @accepted.user_id = current_user.id
      @accepted.accepted_at = DateTime.now
      if @accepted.save
        flash[:success] = "Yeah, tu suis le projet : #{@accepted.title} !"
        redirect_to projects_path
      else
        flash[:error] = "Désolé, la demande n'a pas été prise en compte"
      end
    else
      @leader = User.find(@accepted.user_id)
      flash[:warning] = "Désolé, ce projet est déjà suivi"
    end
  end

  private

  def set_project
    @accepted = Project.find(params[:request_id])
  end

end
