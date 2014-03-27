class Character < ActiveRecord::Migration
  def change
    create_table "characters", force: true do |t|
      t.string :name
      t.string :photo_url
      t.references :enemy
      t.string :skill
    end
  end
end
