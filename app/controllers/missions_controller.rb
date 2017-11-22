class MissionsController < ApplicationController
  before_action :set_mission, only: :show

  def index
    @pending = Apply.pending.where(user_id != current_user)
    @no_apply = Mission.no_apply
    @missions = Mission.where(id: @pending || @no_apply)
  end

  def show
    @apply = Apply.new
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

end
