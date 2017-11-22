class RequestsController < ApplicationController

def index
  @requests = Project.where(accepted_at: nil)
end


end
