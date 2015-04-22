class StatesController < ApplicationController
  def index
    @states = State.all
    @data = State.data_struct
    respond_to do |format|
      format.json { render :json => @data }
      format.html { render :index }
    end
  end

  def show
    @state = State.find(params[:id])
    @data = @state.data_structure
    respond_to do |format|
      format.json { render :json => @data }
      format.html { render :show }
    end
  end
end
