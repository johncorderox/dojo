class FormController < ApplicationController
  def index
  end
  def submit
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    redirect_to '/result'
  end
  def result
    @session_name = session[:name]
    @session_location = session[:location]
    @session_language = session[:language]
    @session_comment = session[:comment]
    session[:count] = 0
    if session[:count]
      session[:count] = session[:count] + 1
      flash[:notice] = "You submitted this form #{session[:count]} times"
  end
end
end
