# In Mac Terminal type "rackup" to
# run "config.ru" which in turn runs
# "server.rb" and view the website at:
# localhost:9292

require_relative "server"

# Code below means when I go to
# localhost:9292/welcomes the "WelcomesController" runs
map("/welcomes") { run WelcomesController }