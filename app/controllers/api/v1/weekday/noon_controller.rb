class Api::V1::Weekday::NoonController < ApplicationController
  def index
    time = Noon.all
    render json: time
  end
  def show
    time = Noon.where(id:params[:id])
    render json: time
  end
end