class UsersController < ApplicationController
  # 'get "/" do' code starts in "/users" as the base path
  # because "config.ru" has the line below:
  # map("/users"){ run UsersController }
  get "/" do
    @title = "All Users"
    @users = User.all
    erb :main_layout do
      erb :"users/index"
    end
  end

  # Path for GET request below is "/users/new" and points
  # to a form to add a new user
  get "/new" do
    @title = "Add a New User"
    erb :main_layout do
      erb :"users/new"
    end
  end

  # "/users" POST request to add a new user and redirect from
  # "/users/new" to "/users"
  post "/" do
    user = User.new
    user.email = params[:email]
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]

    password_salt = BCrypt::Engine.generate_salt
    password_hash = BCrypt::Engine.hash_secret(params[:password], password_salt)

    user.salt = password_salt
    user.encrypted_password = password_hash
    user.save

    redirect "/users"
  end

  # Show a single user
  get "/:id" do
    @user = User.find(params[:id])
    @title = "#{@user.first_name} #{@user.last_name} User Profile"
    erb :main_layout do
      erb :"users/single_user"
    end
  end

  # Go to a page to edit a user
  get "/:id/edit" do
    @user = User.find(params[:id])
    @title = "Edit #{@user.first_name} #{@user.last_name} User Profile"
    erb :main_layout do
      erb :"users/edit_user"
    end
  end

  # PATCH request to update a user
  patch "/:id" do
    user = User.find(params[:id])
    user.update(email: params[:email], first_name: params[:first_name], last_name: params[:last_name])

    redirect "/users"
  end

  # DELETE request to delete a user
  delete "/delete/:id" do
    user = User.find(params[:id])
    user.destroy
    redirect "/users"
  end
end