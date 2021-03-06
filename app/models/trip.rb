# == Schema Information
#
# Table name: trips
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  date        :date
#  time        :time
#  destination :string(255)
#  comments    :text
#  created_at  :datetime
#  updated_at  :datetime
#  hashid      :string(255)
#

class Trip < ActiveRecord::Base
  has_many :relations
  has_many :cars, through: :relations, source: :car
  validates :name, presence: true
  validates :datetime, presence: true
  validates :destination, presence: true
end
