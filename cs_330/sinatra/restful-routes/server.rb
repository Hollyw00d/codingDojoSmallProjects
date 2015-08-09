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