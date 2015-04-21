class CombineCarDateTime < ActiveRecord::Migration
  def change
  	remove_column :cars, :depart_date
  	remove_column :cars, :depart_time
  	add_column :cars, :depart_datetime, :datetime
  end
end
