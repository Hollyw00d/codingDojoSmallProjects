class WelcomesController < ApplicationController
  get "/" do
    # The line below says first go
    # to the "main_layout" view
    # and then pull in data from the
    # "welcomes/welcome" view
    @title = "Welcome to Frank"

    erb :main_layout do
      erb :"welcomes/welcome"
    end
  end
end