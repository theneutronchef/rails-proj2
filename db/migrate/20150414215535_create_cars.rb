class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :driver
      t.integer :number_of_seats
      t.string :origin

      t.timestamps
    end
  end
end
