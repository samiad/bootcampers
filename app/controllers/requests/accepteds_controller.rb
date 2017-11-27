class Requests::AcceptedsController < ApplicationController
  before_action :set_project, only: :create

  def create
    if @accepted.accepted_at == nil
      @accepted.user_id = current_user.id
      @accepted.accepted_at = DateTime.now
      if @accepted.save
        flash[:success] = "Congrats, project #{@accepted.title} is yours!"
        redirect_to projects_path
      else
        flash[:error] = "Sorry, something went wrong"
      end
    else
      @leader = User.find(@accepted.user_id)
      flash[:warning] = "Sorry, this project has just been accepted by #{@leader.first_name} #{@leader.last_name}"
    end
  end

  private

  def set_project
    @accepted = Project.find(params[:request_id])
  end

end
