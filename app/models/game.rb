class Game < ActiveRecord::Base

  has_and_belongs_to_many :users, :uniq=>true
  has_and_belongs_to_many :levels, :uniq=>true


  attr_reader :circles, :colors, :guesses,:history
  attr_reader :board, :winning_combinations, :x, :o

  def mastermind
    @colors=["red","yellow","blue","green","orange","pink"]
    color1=@colors.sample
    color2=@colors.sample
    color3=@colors.sample
    color4=@colors.sample
    @circles=[]
    @circles << color1 << color2 << color3 << color4
    @guesses=[]
    @history=[]
  end

  def mastermind_evaluate(guesses,circles)
    correct_color=0
    correct_position=0

    if guesses.last(4) == circles
      return :success
    elsif guesses.length > 20
      return :too_many_tries
    elsif guesses.last(4) != circles
      c=circles.collect{|x|x}
      g=guesses.last(4).collect{|x|x}
      i=0
        while i < circles.length
            if g[i]==c[i]
              correct_position+=1
            end
          i+=1
        end
      g.each do |x|
          if c.include?x
          correct_color+=1
          c.delete_at c.index(x)
          end
        end
        return correct_color,correct_position
    end
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
