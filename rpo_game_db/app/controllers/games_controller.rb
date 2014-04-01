class GamesController < ApplicationController

def show
  @user=current_user
  @game=Game.find(params[:id])
  @method="game_#{params[:id]}"
  @game_load=@game.method(@method).call
  @level=Level.find(@user.level_id)
  @circles=$circles
end

def guess_post
  @game=Game.find(1)
  @color1=params[:color1]
  @color2=params[:color2]
  $circles << @color1 << @color2
  @guess1=params[:guess0]
  @guess2=params[:guess1]
  $guesses << @guess1 << @guess2
  if $guesses.last(2) == $circles
    $guesses=[]
    redirect_to game_1_guess_result_path
  elsif $guesses.length > 4
    flash[:notice]="You have taken too many tries. Try again."
    $guesses=[]
    redirect_to game_path(@game)
  else
    correct_color=0
    correct_position=0
    if @color1==@guess1
      correct_color+=1
      correct_position+=1
    elsif @color1==@guess2
      correct_color+=1
    end
    if @color2==@guess1
      correct_color+=1
    elsif @color2==@guess2
      correct_color+=1
      correct_position+=1
    end
    flash[:color]="Correct Colors:#{correct_color} "
    flash[:position]="Correct Positons:#{correct_position}"
    redirect_to game_1_guess_display_path(@color1)
  end

end


def guess
  @game=Game.find(1)

end


def guess_result
  @level=Level.find(current_user.level_id)
end


end
