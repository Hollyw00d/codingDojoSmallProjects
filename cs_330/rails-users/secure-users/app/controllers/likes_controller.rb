class LikesController < ApplicationController
  def create
    like = Like.new(like_params)

    if like.save
      redirect_to "/secrets"
    else
      redirect_to "/secrets"
    end
  end

  # t.integer  "user_id"
  # t.integer  "secret_id"

  def destroy
    secret = Secret.find(params[:id])
    secret.destroy
    redirect_to "/users/#{secret.user_id}"
  end

  private
    def like_params
      params.require(:like).permit(:user_id, :secret_id)
    end
end
