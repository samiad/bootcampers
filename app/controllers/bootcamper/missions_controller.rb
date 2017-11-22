class Bootcamper::MissionsController < ApplicationController

  def index
    # Retrieve my pending missions
    @pending_missions = Mission.mine(current_user).pending
    # Retrieve my ongoing missions
    @ongoing_missions = Mission.mine(current_user).accepted.not_delivered
    # Retrieve my delivered missions
    @delivered_missions = Mission.mine(current_user).delivered
  end

end
