class Friendship < ActiveRecord::Migration
  def change
    create_table "friendships", force: true do |t|
      t.references :user
      t.integer :friend_id
    end
  end
end
