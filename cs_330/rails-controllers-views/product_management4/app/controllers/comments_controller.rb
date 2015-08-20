class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(product_id: params[:product_id], comment: params[:comment])

    if @comment.save
      redirect_to "/products/#{@comment.product_id}"
    else
      @errors = @comment.errors.full_messages
    end

  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to "/products/#{comment.product_id}"
  end

end
