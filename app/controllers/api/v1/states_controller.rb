class Api::V1::StatesController < ApplicationController
  def index
    @states = State.all
    render json: @states, callback: params["callback"]
  end
end
