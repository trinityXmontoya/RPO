class GameUser < ActiveRecord::Migration
  def change
    create_table "games_users", force: true do |t|
      t.references :games
      t.references :users
    end
  end
end
