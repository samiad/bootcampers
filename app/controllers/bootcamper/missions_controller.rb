class Bootcamper::MissionsController < ApplicationController

  def index
    @pending = Apply.pending
    @finished = Project.finished
    @pending_missions = Mission.where(id: @pending)
    @finished_missions = Mission.where(project_id: @finished)
    @ongoing_missions = Mission.where.not(id: @pending, project_id: @finished)
  end

end
