class Comment < ActiveRecord::Migration
  def change
    create_table "comments", force:true do |t|
      t.references :user
      t.references :author
      t.string :content
      t.timestamps
    end
  end
end
