class Dojo < ActiveRecord::Base
  # Make association between a singular "dojo" and
  # multiple "ninjas"
  has_many :ninjas

  validates :name, :city, presence: true
  validates :state, presence: true, length: { is: 2 }
end
