class Game < ActiveRecord::Base

  has_and_belongs_to_many :users, :uniq=>true
  has_and_belongs_to_many :levels, :uniq=>true


  attr_reader :colors,:color1,:color2,:guess,:circles
  attr_reader :board, :winning_combinations, :x, :o

  def mastermind
    @colors=["red","yellow","blue"]
    @color1=@colors.sample
    @color2=@colors.sample
    @circles=[]
    @circles << @color1 << @color2
  end


  def game_2
    return "game 2"
  end

  def tic_tac_toe
    @board= [
      "_","_","_",
      "_","_","_",
      "_","_","_"
    ]
    @winning_combinations=[
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]
    @x="X"
    @o="O"
  end

  def game_4
    return "game 4"
  end

  def game_5
    return "game 5"
  end

end
