class Api::V1::DistrictsController < ApplicationController
  def index
    @districts = District.where(state_id: params[:state_id])
    render json: @districts
  end
end
