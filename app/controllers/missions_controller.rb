class MissionsController < ApplicationController
  before_action :set_mission, only: :show

  def index
    @missions = Mission.all
  end

  def show
    @apply = Apply.new
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

end
