class LevelUser < ActiveRecord::Migration
  def change
    create_table "levels_users", force: true, index:false do |t|
      t.references :level
      t.references :user
    end
  end
end
