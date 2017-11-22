class Company::ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def Show

  end
end
