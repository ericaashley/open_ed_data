class Api::V1::SchoolsController < ApplicationController
  def index
    @district = District.find(params[:district_id])
    @schools = School.where(leaid: @district.nces_id)
    render json: @schools
  end
end
