class AddDepartureTimeToCars < ActiveRecord::Migration
  def change
    add_column :cars, :depart_date, :date
    add_column :cars, :depart_time, :time
  end
end
