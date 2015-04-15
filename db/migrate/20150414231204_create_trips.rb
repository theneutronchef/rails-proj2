class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :hashid
      t.date :date
      t.time :time
      t.string :destination
      t.text :comments

      t.timestamps
    end
  end
end
