class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
    unless session[:user_id]
      redirect_to "/sessions/new"
    end
    @user = User.find(params[:id])
  end

  def edit
    unless session[:user_id]
      redirect_to "/sessions/new"
    end
    @user = User.find(params[:id])
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      @errors = user.errors.full_messages
      render "new"
    end
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to "/users/#{user.id}"
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
