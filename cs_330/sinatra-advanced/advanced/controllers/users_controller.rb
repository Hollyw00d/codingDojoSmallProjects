class UsersController < ApplicationController
  # 'get "/" do' code starts in "/users" as the base path
  # because "config.ru" has the line below:
  # map("/users"){ run UsersController }
  get "/" do
    erb :main_layout do
      @title = "All Users"
      @users = User.all
      erb :"users/index"
    end
  end

  get "/new" do
    erb :main_layout do
      @title = "Add a New User"
      erb :"users/new"
    end
  end

  post "/" do
    user = User.new
    user.email = params[:email]
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]


    password_salt = BCrypt::Engine.generate_salt
    password_hash = BCrypt::Engine.hash_secret("password", password_salt)

    user.salt = params[:password_salt]
    user.encrypted_password = params[:password_hash]
    user.save


    redirect "/users"
  end

end