require "sinatra"
require "active_record"
require "sqlite3"

# "ActiveRecord" object has a "Base" class with
# a "establish_connection" method that enables me to
# establish a connection to a particular database
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "restful_routes_development.sqlite3"
)

# The "User" class inherits from the "ActiveRecord::Base" class
class User < ActiveRecord::Base
end

get "/" do
  "Frank Sinatra"
end