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
    user.update(name: params[:name], email: params[:email], password: params[:password])
    redirect_to "/users/#{user.id}"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    session[:user_id] = nil
    redirect_to "/sessions/new"
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
