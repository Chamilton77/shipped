class DropContainerFromJob < ActiveRecord::Migration[5.0]
  def change
  	remove_column :jobs, :containters
  end
end
