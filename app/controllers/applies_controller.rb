class AppliesController < ApplicationController

  def create
    @apply = Apply.new(apply_params)
    @apply.save
    redirect_to bootcamper_missions_path(@apply)
  end

  private

  def apply_params
    params.require(:apply).permit(:user_id, :mission_id)
  end


end
