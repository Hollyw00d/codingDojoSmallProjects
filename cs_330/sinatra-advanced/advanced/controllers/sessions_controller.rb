class SessionsController < ApplicationController
  get "/new" do
    @title = "Sign In"
    erb :main_layout do
      erb :"sessions/new"
    end
  end

  # Log In form POST request and
  # IF a successful sign in go to
  # the single user page ("/users/:id") and
  # create a "session[:user_id] = user.id"
  # session variable
  # ELSE redirect back to the
  # log in page ("/sessions/new")
  post "/" do
    user = User.find_by(email: params[:email])

    if user && user.encrypted_password == BCrypt::Engine.hash_secret(params[:password], user.salt)
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else
      session[:errors] = "Invalid email/password combination."
      redirect "/sessions/new"
    end
  end

  # Sign out form DELETE request to
  # delete a sessions and sign out
  delete "/" do
    session[:user_id] = nil
    redirect "/sessions/new"
  end
end