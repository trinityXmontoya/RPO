class Character < ActiveRecord::Base
  has_and_belongs_to_many :users, :uniq=>true
  has_and_belongs_to_many :levels, :uniq=>true

  belongs_to :user, :uniq=>true

end
