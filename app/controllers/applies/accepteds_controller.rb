class Applies::AcceptedsController < ApplicationController

  def create
    accepted = Apply.find(params[:apply_id])
    accepted.accepted_at = Time.now
    accepted.save

    @mission = accepted.mission
    applies_to_reject = @mission.applies.where(accepted_at: nil)
    applies_to_reject.update_all(declined_at: Time.now)

    respond_to do |format|
      format.js # create.js.erb
    end
  end

end
