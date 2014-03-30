class GameUser < ActiveRecord::Migration
  def change
    create_table "games_users", force: true, id: false do |t|
      t.references :game
      t.references :user
    end
  end
end
