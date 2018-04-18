class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500

  def render_404
    render :json => { message:'This page is not found', status:404 }
  end

  def render_500
    render :json =>{ message:'Internal server error', status:500 }
  end
end
