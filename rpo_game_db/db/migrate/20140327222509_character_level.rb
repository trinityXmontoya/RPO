class CharacterLevel < ActiveRecord::Migration
  def change
    create_table "characters_levels", force: true, id: false do |t|
      t.references :character
      t.references :level
    end
  end
end
