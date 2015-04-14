class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :user, index: true
      t.references :car, index: true
      t.references :trip, index: true

      t.timestamps
    end
  end
end
