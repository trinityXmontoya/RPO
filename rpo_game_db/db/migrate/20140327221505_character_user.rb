class CharacterUser < ActiveRecord::Migration
  def change
    create_table "characters_users", force: true, id: false do |t|
      t.references :character
      t.references :user
      t.timestamps
      end
  end
end
