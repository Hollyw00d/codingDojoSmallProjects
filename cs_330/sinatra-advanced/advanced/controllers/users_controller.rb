class UsersController < ApplicationController
  get "/" do
    @title = "All Users"

    erb :main_layout do
      erb :"users/index"
    end
  end
end