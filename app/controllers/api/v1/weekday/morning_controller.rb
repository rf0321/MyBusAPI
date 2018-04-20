class Api::V1::Weekday::MorningController < ApplicationController
  def index
    time = Morning.all
    render json: time
  end
  def show
    time = Morning.where(id:params[:id])
    render json: time
  end
end