class Level < ActiveRecord::Base
  has_and_belongs_to_many :characters, :uniq=>true
  has_and_belongs_to_many :games, :uniq=>true
  has_and_belongs_to_many :users, :uniq=>true
end
