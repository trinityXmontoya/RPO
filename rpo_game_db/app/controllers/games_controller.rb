class GamesController < ApplicationController

def show
  @user=User.find(session[:user_id])
  @game=Game.find(params[:id])
  @method="game_#{params[:id]}"
  @game_load=@game.method(@method).call
  @level=Level.find(@user.level_id)
end

def guess
  @game=Game.find(1)
  @color1=
  @color2=
  @guess1=color_0
  @guess2=color_1
  redirect_to guess_result_path
end

def guess_result
end


end
