class PostsController < ApplicationController
  patch "/" do
    erb :main_layout do
      user = User.find(params[:user_id])
      user.posts.create(content: params[:content])
      redirect "/users/#{user.id}"
    end
  end

end