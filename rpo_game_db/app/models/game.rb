class Game < ActiveRecord::Base

  has_and_belongs_to_many :users, :uniq=>true
  has_and_belongs_to_many :levels, :uniq=>true

  def game_1
    return "game 1"
  end

  def game_2
    return "game 2"
  end

  def game_3
    return "game 3"
  end

  def game_4
    return "game 4"
  end

  def game_5
    return "game 5"
  end

end
