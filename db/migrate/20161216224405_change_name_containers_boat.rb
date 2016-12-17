class ChangeNameContainersBoat < ActiveRecord::Migration[5.0]
  def change
  	remove_column :boats, :containters
  end
end
