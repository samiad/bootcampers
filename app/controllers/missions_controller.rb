class MissionsController < ApplicationController
  before_action :set_mission, only: :show

  def index
    # Retrieve missions not yet applied for by anybody
    @no_apply_missions = Mission.signed.no_apply
    # Retrieve pending missions of other bootcampers
    @pending_missions = Mission.where.not(id: current_user.missions).pending
    @missions = @no_apply_missions + @pending_missions
  end

  def show
    @apply = Apply.new
    render layout: false
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

end
