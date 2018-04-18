class HomeController < ApplicationController
  def index
    render :json => { message: 'Hello,this is my api for nearside bus time.' }
  end
end