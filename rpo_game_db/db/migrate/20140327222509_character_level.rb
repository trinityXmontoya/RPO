class CharacterLevel < ActiveRecord::Migration
  def change
    create_table "characters_levels", force: true do |t|
      t.references :characters
      t.references :levels
    end
  end
end
