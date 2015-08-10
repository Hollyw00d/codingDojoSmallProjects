require "sinatra"
require "active_record"
require "sqlite3"

# The "ActiveRecord" object has a "Base" class which in turn has a
# "establish_connection" method which below creates a
# "sqlite3" database connection and will eventually
# create a database named "restful_routes_development.sqlite3" in the route directory
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "restful_routes_development.sqlite3"
)

# "User" class inherits from "ActiveRecord::Base"
class User < ActiveRecord::Base
end

get "/" do
  "Frank Sinatra"
end