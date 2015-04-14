class Relation < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  belongs_to :trip
end
