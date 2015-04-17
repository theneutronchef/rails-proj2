class Car < ActiveRecord::Base
  has_many :relations
  validates :driver, presence: true
  validates :number_of_seats, presence: true
  validates :origin, presence: true
end
