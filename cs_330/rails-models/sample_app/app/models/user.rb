class User < ActiveRecord::Base
  has_many :products

  # Valid email regex constant
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  def full_name
    self.first_name + " " + self.last_name
  end

  before_save do
    self.email.downcase!
  end
end
