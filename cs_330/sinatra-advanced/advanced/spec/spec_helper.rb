# Line below makes RSpec and Capybara testing use a
# "test" database and clean it automatically
# so it doesn't get filled up w/ too much junk in DB
ENV["SINATRA_ENV"] = "test"
require_relative "../server"

require "capybara"
require "database_cleaner"

Capybara.app = Rack::Builder.parse_file(File.expand_path("../../config.ru", __FILE__)).first

RSpec.configure do |config|
  config.include Capybara::DSL
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end