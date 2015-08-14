class Message < ActiveRecord::Base
  validates :author, :message, presence: true

  belongs_to :user
  belongs_to :post
end
