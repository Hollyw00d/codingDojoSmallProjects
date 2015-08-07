require "sinatra"

get "/corny/:word" do

    "You #{params[:word]}"

end