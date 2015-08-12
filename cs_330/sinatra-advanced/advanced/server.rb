# In Mac Terminal type "rackup" to
# run "config.ru" which in turn runs
# "server.rb" and view the website at:
# localhost:9292

require "sinatra"
require "active_record"
require "bcrypt"
require "sqlite3"

# Path to controllers and models
Dir.glob("./{controllers,models}/*.rb").each{ |file| require file }

# Run app in development mode
ENV['SINATRA_ENV'] ||= "development"

# Code below connects to a database or creates a new DB if one doesn't exist
# AND possibly creates a test database as well for RSpec and Capybara
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "./db/#{ENV['SINATRA_ENV']}.sqlite"
)