class Enemy < ActiveRecord::Base
  has_one :character, :uniq=>true
end
