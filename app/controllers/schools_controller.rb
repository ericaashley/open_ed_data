class SchoolsController < ApplicationController
  def index
  end

  def show
    @school = School.find(params[:id])
  end
end
