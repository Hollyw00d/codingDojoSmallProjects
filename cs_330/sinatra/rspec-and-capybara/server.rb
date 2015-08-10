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

get "/projects" do
  # Get all projects
  @projects = Project.all
  erb :"projects/index"
end

get "/projects/new" do
  erb :"projects/new"
end

# Add a new project using the "Add New Project" form
post "/projects" do
  # Get the text inside the INPUT, TEXTAREA tags
  # using the "params" hash
  Project.create(name: params[:name], description: params[:description])
  redirect "/projects"
end

# Show a single project
get "/projects/:id" do
  @project = Project.find(params[:id])
  erb :"projects/show"
end

# Show a single project to edit
get "/projects/:id/edit" do
  @project = Project.find(params[:id])
  erb :"projects/edit"
end