class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    @users = User.all

    @user = User.new(user_params)

    if @user.save
      redirect_to "/"
    else
      @errors = @product.errors.full_messages
      render "index"
    end

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to "/"
  end

  def destroy
    # If line below as uncommented
    # it would be stop on a "/users/:id"
    # route and show the available "params":
    # "fail"

    user = User.find(params[:id])
    user.destroy
    redirect_to "/"
  end

  private
    # Ensure that input from form MUST MATCH column names in "users" table
    # that are listed below
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
