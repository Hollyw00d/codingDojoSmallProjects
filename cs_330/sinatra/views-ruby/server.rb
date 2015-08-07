require "sinatra"

get "/" do
  @greeting = "Konichiwa"
  erb :index
end

get "/users" do
  @users = ["Kobe", "Rondo", "Randle"]
  erb :"users/index"
end