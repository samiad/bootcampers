class Bootcamper::MissionsController < ApplicationController

  def index
    @pending = Apply.pending
    @finished = Project.finished
    @pending_missions = Mission.where(id: @pending, current_user)
    @finished_missions = Mission.where(project_id: @finished, current_user)
    @ongoing_missions = Mission.where.not(id: @pending, project_id: @finished).where(current_user)
  end

end
