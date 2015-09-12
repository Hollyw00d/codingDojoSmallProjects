class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      flash[:notice] = "Invalid email/password combination"
      render "new"
    end
  end

  # Logout form that destroy session
  def destroy
    session[:user_id] = nil
    redirect_to "/sessions/new"
  end
end
