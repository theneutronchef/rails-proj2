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

require 'test_helper'

class RelationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
