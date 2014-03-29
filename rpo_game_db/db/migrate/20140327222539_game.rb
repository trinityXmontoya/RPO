class Game < ActiveRecord::Migration
  def change
    create_table "games", force: true do |t|
      t.string :name
      t.string :photo_url
      t.integer :points
    end
  end
end
