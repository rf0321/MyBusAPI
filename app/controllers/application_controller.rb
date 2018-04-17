class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500

  def render_404
    render :json => { 'error' =>'404:This page is not found'}
  end

  def render_500
    render :json =>{ 'error' =>'500 internal server error'}
  end
end
