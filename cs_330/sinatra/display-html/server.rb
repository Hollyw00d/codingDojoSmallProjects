require "sinatra"

get "/" do
  File.read("public/index.html")
end

get "/about" do
  File.read("public/about.html")
end