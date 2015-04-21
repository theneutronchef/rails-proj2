class CombineDateTime < ActiveRecord::Migration
  def change
  	remove_column :trips, :date
  	remove_column :trips, :time 
  	add_column :trips, :datetime, :datetime
  end
end
