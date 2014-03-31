class RemoveColumnFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :method_name
  end
end
