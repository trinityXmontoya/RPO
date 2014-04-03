class AddMethodNameToGames < ActiveRecord::Migration
  def change
    add_column :games, :method_name, :string
  end
end
