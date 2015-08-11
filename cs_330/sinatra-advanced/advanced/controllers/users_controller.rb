class UsersController < ApplicationController
  get "/" do
    @title = "All Users"

    erb :main_layout do
      @users = User.all
      erb :"users/index"
    end
  end
end