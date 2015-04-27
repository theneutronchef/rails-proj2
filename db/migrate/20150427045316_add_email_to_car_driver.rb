class AddEmailToCarDriver < ActiveRecord::Migration
  def change
  	add_column :cars, :driver_email, :string
  end
end
