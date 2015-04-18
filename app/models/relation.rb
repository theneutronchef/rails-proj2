# == Schema Information
#
# Table name: relations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  car_id     :integer
#  trip_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Relation < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  belongs_to :trip
end
