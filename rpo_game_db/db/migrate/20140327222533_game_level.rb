class GameLevel < ActiveRecord::Migration
  def change
    create_table "games_levels", force: true do |t|
      t.references :games
      t.references :levels
    end
  end
end

