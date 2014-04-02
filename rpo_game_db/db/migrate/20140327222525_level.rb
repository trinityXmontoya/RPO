class Level < ActiveRecord::Migration
  def change
    create_table "levels", force: true do |t|
      t.string :name
    end
  end
end
