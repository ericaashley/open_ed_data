class StatesController < ApplicationController
  def index
  end

  def show
    @state = State.includes(:schools, :districts).find(params[:id])

    respond_to do |format|
      format.json do
        @districts = District.includes(:schools).where("state_id = #{params[:id]}")
        @data = @state.data_structure(@districts)
        render :json => @data
      end
      format.html { render :show }
    end
  end
end
