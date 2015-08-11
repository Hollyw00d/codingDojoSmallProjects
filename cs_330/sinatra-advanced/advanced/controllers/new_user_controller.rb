class NewUserController < ApplicationController
  get "/" do
    @title = "Add a New User"

    erb :main_layout do
      erb :"users/new"
    end
  end
end