class AppliesController < ApplicationController

  def create
    @apply = current_user.applies.new(apply_params)

    if @apply.save
      redirect_to bootcamper_missions_path(@apply)
    else
      render 'missions/show'
    end
  end

  private

  def apply_params
    params.require(:apply).permit(:mission_id)
  end


end
