class SecretsController < ApplicationController
  def index
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
