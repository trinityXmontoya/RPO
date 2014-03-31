class User < ActiveRecord::Migration
  def change
    create_table "users", force: true do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.references :character
      t.string :photo_url
      t.integer :time_played
      t.references :level
      t.integer :score
      t.timestamps
    end
  end
end
