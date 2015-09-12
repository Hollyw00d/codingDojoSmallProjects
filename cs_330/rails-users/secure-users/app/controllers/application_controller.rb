class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # If a "session[:user_id]" exists create
  # find the user by "user_id" number
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def require_correct_user
    user = User.find(params[:id]) if session[:user_id]

    redirect_to "/users/#{session[:user_id]}" if current_user != user
  end

  # Other controllers have access to the "current_user" method
  helper_method :current_user
end
