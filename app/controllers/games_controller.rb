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
  @level=Level.find(@user.level_id)

  method="mastermind"
  @game.method(method).call

  @colors=@game.colors

  session[:circles]=@game.circles
  @circles=session[:circles]

  session[:guesses]=@game.guesses

end

def mastermind_guess
  @game=Game.find(1)
  method="mastermind"
  @game.method(method).call

  enemy=Enemy.find(current_user.character_id).name

  @guesses=session[:guesses]
  @circles=session[:circles]
    guess1=params[:guess0]
    guess2=params[:guess1]
    guess3=params[:guess2]
    guess4=params[:guess3]
  @guesses << guess1 << guess2 << guess3 << guess4

  result = @game.mastermind_evaluate(@guesses,@circles)
  correct_color= result[0]
  correct_position= result[1]
  if result == :success
    flash[:win_msg]="Success! You've solved it and defeated #{enemy}!"
    redirect_to mastermind_display_path
  elsif result == :too_many_tries
    flash[:notice]="You have taken too many turns and #{enemy} has won. Try again."
    redirect_to mastermind_begin_path
  else
  @position="Correct Position:#{correct_position}"
  @color="Correct Colors:#{correct_color}"
  flash[:color]=@color
  flash[:position]=@position
  redirect_to mastermind_display_path
  end

end

def mastermind_display
  @level=Level.find(current_user.level_id)
  @game=Game.find(1)
  method="mastermind"
  @game.method(method).call
  @colors=@game.colors
  @guesses=session[:guesses]
  @circles=session[:circles]

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
