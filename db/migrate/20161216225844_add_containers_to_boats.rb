class AddContainersToBoats < ActiveRecord::Migration[5.0]
  def change
  	add_column :boats, :containers, :string
  end
end
