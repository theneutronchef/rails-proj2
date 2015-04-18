# == Schema Information
#
# Table name: cars
#
#  id              :integer          not null, primary key
#  driver          :integer
#  number_of_seats :integer
#  origin          :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Car < ActiveRecord::Base
  has_many :relations
  validates :driver, presence: true
  validates :number_of_seats, presence: true
  validates :origin, presence: true
end
