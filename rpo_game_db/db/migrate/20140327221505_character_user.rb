class CharacterUser < ActiveRecord::Migration
  def change
    create_table "characters_users", force: true do |t|
      t.references :characters
      t.references :users
      end
  end
end
