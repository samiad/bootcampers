class ProjectsController < ApplicationController

  def index
    @projects = Project.where(user_id: current_user)
    @accepted = @projects.accepted
    @scoped = @projects.scoped
    @ongoing = @projects.ongoing
    @delivered = @projects.delivered
    @paid_off = @projects.where.not(paid_off_at: nil)
  end

  def show

  end

  def new
    @project = Project.new
    # render layout: false
  end

  def create

  end


end
