class Enemy < ActiveRecord::Migration
  def change
    create_table "enemies", force: true do |t|
      t.string :name
      t.string :photo_url
      t.references :character
    end
  end
end
