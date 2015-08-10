require "sinatra"
require "active_record"
require "sqlite3"

ENV["SINATRA_ENV"] ||= "development"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite3"
)

class Project < ActiveRecord::Base
end

get "/" do
  "Welcome to my portfolio"
end