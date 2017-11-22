class AppliesController < ApplicationController
  before_action :set_mission, only: [:create]

  def create
    @apply = current_user.applies.new(mission: @mission)
    @apply.save
    redirect_to bootcamper_missions_path
  end

  private

  def set_mission
    @mission = Mission.find(params[:mission_id])
  end
end
