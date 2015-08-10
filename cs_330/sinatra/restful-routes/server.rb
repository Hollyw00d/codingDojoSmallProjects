require "sinatra"
require "active_record"
require "sqlite3"

# Enable sessions
enable :sessions

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "restful_routes_development.sqlite3"
)

class User < ActiveRecord::Base
end

# Home page with log in form
get "/" do
  # Form input name value to use later
  # to create a session variable
  erb :index
end

# Home page log in form
post "/login" do
  # 'params["password"]' refers to the text inputed
  # inside the following tag on the "/index.erb" file:
  # '<input type="password" name="password" />' and
  # if the value submitted is "c0dingd0j0bellevue"
  # created "loggedin" session variable and then
  # redirect to the "/users" page
  if params["password"] === "c0dingd0j0bellevue"
    session["loggedin"] = "loggedin"
    redirect "/users"
  else
    redirect "/"
  end
end

# Log out form to destroy a session,
# redirect to the home page,
# and prevent peeps from visting any other page
# until successfully logging in again on the home page
post "/logout" do
  # Set the session variable to "nil" and
  # redirect to the home page
  session["loggedin"] = nil
  redirect "/"
end

# View all rows in "users" table
get "/users" do
  if !session["loggedin"]
    redirect "/"
  else
    @users = User.all
    erb :"users/index"
  end
end

# Add a new row in "users" table
get "/users/new" do
  if !session["loggedin"]
    redirect "/"
  else
    erb :"users/new"
  end
end

# Add a new user using the "Add a New User" form
post "/users" do
  # Access the POST variables using the "params" hash
  User.create(first_name: params[:first_name], last_name: params[:last_name])
  redirect "/users"
end

# Show a single user
get "/users/:id" do
  if !session["loggedin"]
    redirect "/"
  else
    @user = User.find(params[:id])
    erb :"users/show"
  end
end

# Page to edit a single user
get "/users/:id/edit" do
  if !session["loggedin"]
    redirect "/"
  else
    @user = User.find(params[:id])
    erb :"users/edit"
  end
end

# "patch" connected to the
# hidden input tag which is contained
# inside the '<form id="user-form" action="/users/<%= @user.id %>" method="post">' tag:
# '<input type="hidden" name="_method" value="patch" />'
patch "/users/:id" do
  user = User.find(params[:id])
  user.update(first_name: params[:first_name], last_name: params[:last_name])
  redirect "/users/#{user.id}"
end

# "patch" connected to the
# hidden input tag which is contained
# inside the '<form action="/users/<%= @user.id %>" method="post">' tag:
# '<input type="hidden" name="_method" value="delete" />'
delete "/users/:id" do
  user = User.find(params[:id])
  user.destroy
  redirect "/users"
end




