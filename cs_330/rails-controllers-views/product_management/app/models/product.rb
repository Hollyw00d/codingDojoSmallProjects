class Product < ActiveRecord::Base
  validates :name, :price, presence: true
  validates :description, presence: true, length: { in: 7..140 }
end