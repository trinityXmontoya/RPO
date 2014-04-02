class Comment<ActiveRecord::Base
  belongs_to :user,:foreign_key => "user_id"
  belongs_to :author,:foreign_key => "author_id"
end
