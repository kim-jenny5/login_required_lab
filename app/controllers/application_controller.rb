class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def home
    redirect_to login_path if !session[:name]
  end


  def current_user
    current_user = session[:name] if session[:name]
  end
end
