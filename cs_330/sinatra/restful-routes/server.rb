require "sinatra"
require "active_record"
require "sqlite3"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "restful_routes_development.sqlite3"
)

class User < ActiveRecord::Base
end

# View all rows in "users" table
get "/users" do
  @users = User.all
  erb :"users/index"
end

# Add a new row in "users" table
get "/users/new" do
  erb :"users/new"
end

# Add a new user using the "Add a New User" form
post "/users" do
  # Access the POST variables using the "params" hash
  User.create(first_name: params[:first_name], last_name: params[:last_name])
  redirect "/users"
end

# Show a single user
get "/users/:id" do
  @user = User.find(params[:id])
  erb :"users/show"
end






