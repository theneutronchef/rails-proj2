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

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
