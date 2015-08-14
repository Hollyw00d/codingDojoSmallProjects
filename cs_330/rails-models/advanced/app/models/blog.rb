class Blog < ActiveRecord::Base
  has_many :owners
  has_many :posts

  has_many :users, { :through => :owners, :source => "user" }
end
