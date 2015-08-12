# Active Record maps this "User" class to
# the "users" table I just created and
# has a one to many relationship to the
# "posts" table
class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
end