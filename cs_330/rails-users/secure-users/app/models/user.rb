class User < ActiveRecord::Base
  has_many :secrets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_secure_password

  validates :name, presence: true

  # Valid email regex constant
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}

  validates :password, presence: true
end