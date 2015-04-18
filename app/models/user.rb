# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  email_address :string(255)
#  is_driver     :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

class User < ActiveRecord::Base
  has_many :relations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email_address, presence: true
end
