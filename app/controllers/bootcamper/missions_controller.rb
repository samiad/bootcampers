class Bootcamper::MissionsController < ApplicationController

  def index
    # Retrieve my pending missions
    @pending_missions = Mission.mine(current_user).pending
    # Retrieve my ongoing missions
    @ongoing_missions = Mission.mine(current_user).accepted.not_delivered
    # Retrieve my delivered missions
    @delivered_missions = Mission.mine(current_user).delivered.not_paid_off
    # Retrieve my payed missions
    @paid_off_missions = Mission.mine(current_user).paid_off
  end

end
