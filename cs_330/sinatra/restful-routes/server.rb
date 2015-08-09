require "sinatra"
require "active_record"
require "sqlite3"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "restful_routes_development.sqlite3"
)

class User < ActiveRecord::Base
end

get "/users" do
  @users = User.all
  erb :"users/index"
end