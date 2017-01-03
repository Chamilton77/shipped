class AddContainersToJobs < ActiveRecord::Migration[5.0]
  def change
  	add_column :jobs, :containers, :string
  end
end
