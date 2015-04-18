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
  validates :name, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :destination, presence: true
end
