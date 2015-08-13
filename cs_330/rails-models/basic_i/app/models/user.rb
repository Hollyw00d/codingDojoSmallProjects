class User < ActiveRecord::Base

  # Require all columns to be filled w/ data
  validates :first_name, :last_name, presence: true, length: { in: 2..40 }

  validates :email_address, presence: true

  # Checks to see if "age" column value
  # is an integer only and >= 10 || < 150
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 10, less_than: 150, only_integer: true }
end
