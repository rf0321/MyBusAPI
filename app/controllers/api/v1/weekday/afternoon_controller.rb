class Api::V1::Weekday::AfternoonController < ApplicationController
  def index
    time = Afternoon.all
    render json: time
  end
  def show
    time = Afternoon.where(id:params[:id])
    render json: time
  end
end