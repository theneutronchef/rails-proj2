class RemoveHashidFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :hashid, :string
  end
end
