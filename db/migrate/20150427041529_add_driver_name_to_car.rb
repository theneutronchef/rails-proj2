class AddDriverNameToCar < ActiveRecord::Migration
  def change
    add_column :cars, :driver_first_name, :string
    add_column :cars, :driver_last_name, :string
  end
end
