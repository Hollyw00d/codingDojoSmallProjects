# "ApplicationController" is a class that all controllers will inherit and
# this controller has access to "Sinatra::Base" which gives it access to all HTTP requests
class ApplicationController < Sinatra::Base
  use Rack::MethodOverride
  enable :sessions
  set :views, File.expand_path("../../views", __FILE__)
end