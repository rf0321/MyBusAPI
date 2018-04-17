class Api::V1::SatController < ApplicationController
  def index
    @time = Sat.all
    render json: @time
  end
  def show
    @time = Sat.where(id:params[:id])
    render json: @time
  end
end