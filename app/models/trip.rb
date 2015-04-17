class Trip < ActiveRecord::Base
  has_many :relations
  validates :name, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :destination, presence: true
end
