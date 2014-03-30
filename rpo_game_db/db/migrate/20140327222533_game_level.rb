class GameLevel < ActiveRecord::Migration
  def change
    create_table "games_levels", force: true, id: false do |t|
      t.references :game
      t.references :level
    end
  end
end

