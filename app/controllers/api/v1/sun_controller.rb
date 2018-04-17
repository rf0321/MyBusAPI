class Api::V1::SunController < ApplicationController
  def index
    @time = Sun.all
    render json: @time
  end
  def show
    @time = Sun.where(id:params[:id])
    render json: @time
  end
end

