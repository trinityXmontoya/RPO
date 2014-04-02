class GamesController < ApplicationController

def show
  @game=Game.find(params[:id])
  if @game.id ==1
    redirect_to mastermind_begin_path
  elsif @game.id==3
    redirect_to tic_tac_toe_begin_path
  end
end


def mastermind_begin
  @user=current_user
  @game=Game.find(1)
  @method="mastermind"
  @game_load=@game.method(@method).call
  @level=Level.find(@user.level_id)
  @circles=@game.circles
  $colors=@game.colors
  $guesses=[]
  $history=[]
end

def mastermind_guess
  @game=Game.find(1)
  @color1=params[:color0]
  @color2=params[:color1]
  @color3=params[:color2]
  @color4=params[:color3]
  $circles=[]
  $circles << @color1 << @color2 << @color3 << @color4
  @guess1=params[:guess0]
  @guess2=params[:guess1]
  @guess3=params[:guess2]
  @guess4=params[:guess3]
  $guesses << @guess1 << @guess2 << @guess3 << @guess4
  correct_color=0
  correct_position=0
  enemy=Enemy.find(current_user.character_id).name
  if $guesses.last(4) == $circles
    flash[:win_msg]="Success! You've solved it and defeated #{enemy}!"
    redirect_to mastermind_display_path

  elsif $guesses.length > 20
    flash[:notice]="You have taken too many turns and #{enemy} has won. Try again."
    redirect_to mastermind_begin_path

  elsif $guesses.last(4) != $circles
    g=$guesses.last(4)
    i=0
    while i < $circles.length
    if g[i]==$circles[i]
      correct_position+=1
      correct_color+=1
    end
    if $circles.include?(g[i]) && ($circles[i] != g[i])
      correct_color+=1
    end
    i+=1
  end

  @position="Correct Position:#{correct_position}"
  @color="Correct Colors:#{correct_color}"
  $history<<@position << @color
 flash[:color]=@color
 flash[:position]=@position
    redirect_to mastermind_display_path
  end
end

def mastermind_display
  @level=Level.find(current_user.level_id)
  @game=Game.find(1)
end

def tic_tac_toe_begin
  @user=current_user
  @game=Game.find(3)
  @method="tic_tac_toe"
  @game_load=@game.method(@method).call
  @level=Level.find(@user.level_id)
  @board=@game.board
  @o=@game.o
end

end
