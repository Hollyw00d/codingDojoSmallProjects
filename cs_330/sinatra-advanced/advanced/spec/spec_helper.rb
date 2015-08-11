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

# Code below used to test adding a user to the database
def create_user(name)
  first_name, last_name = name.split()

  user = User.new
  user.email = "#{first_name}@lakers.com"
  user.first_name = first_name
  user.last_name = last_name

  password_salt = BCrypt::Engine.generate_salt
  password_hash = BCrypt::Engine.hash_secret("password", password_salt)

  user.salt = password_salt
  user.encrypted_password = password_hash
  user.save
  return user
end