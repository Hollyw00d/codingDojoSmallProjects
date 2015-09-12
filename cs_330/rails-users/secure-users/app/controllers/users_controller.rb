class UsersController < ApplicationController
  before_action :require_correct_user, only: [:show, :edit, :update, :delete]

  def index
    redirect_to "/sessions/new"
  end

  def new
  end

  def show
    if session[:user_id]
      @user = User.find(params[:id])

      @secrets_with_likes = Secret.joins("LEFT JOIN likes ON secrets.id = likes.secret_id").select("secrets.*, count(likes.secret_id)").group("secrets.id")

      @secrets_with_likes = Secret.joins("LEFT JOIN likes ON secrets.id = likes.secret_id").select("secrets.*, count(likes.secret_id)").group("secrets.id")

      # @liked_secrets = Secret.joins(:likes).where("likes.user_id = #{session[:user_id]}")

    else
      redirect_to "/sessions/new"
    end

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
      flash[:errors] = user.errors.full_messages
      render "new"
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(name: params[:name], email: params[:email], password: params[:password])
    redirect_to "/users/#{user.id}"
    else
      @user = User.find(params[:id])
      flash[:errors] = user.errors.full_messages
      render "edit"
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    session[:user_id] = nil
    flash[:notice] = nil
    redirect_to "/sessions/new"
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
