class AddHashidToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :hashid, :string
  end
end
