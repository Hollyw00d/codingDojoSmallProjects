class SecretsController < ApplicationController
  def index
    unless session[:user_id]
      redirect_to "/sessions/new"
    end

    @secrets_with_likes = Secret.joins("LEFT JOIN likes ON secrets.id = likes.secret_id").select("secrets.*, count(likes.secret_id)").group("secrets.id")
    # Find user by "session[:user_id]"
    @user = User.find(session[:user_id])
  end

  def create
    secret = Secret.new(secret_params)

    if secret.save
      redirect_to "/users/#{secret.user_id}"
    else
      redirect_to "/users/#{secret.user_id}"
    end
  end

  def destroy
    secret = Secret.find(params[:id])
    secret.destroy
    redirect_to "/users/#{secret.user_id}"
  end


  private
    def secret_params
      params.require(:secret).permit(:content, :user_id)
    end
end
