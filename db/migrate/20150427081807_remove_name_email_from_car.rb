class RemoveNameEmailFromCar < ActiveRecord::Migration
  def change
  	remove_column :cars, :driver_first_name
  	remove_column :cars, :driver_last_name
  	remove_column :cars, :driver_email
  end
end
