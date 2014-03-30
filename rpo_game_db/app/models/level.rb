class Level < ActiveRecord::Base
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :games
  has_and_belongs_to_many :users

  belongs_to :user
end
