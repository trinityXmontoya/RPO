class GamesController < ApplicationController

def show
  @user=User.find(session[:user_id])
  @game=Game.find(params[:id])
  @method="game_#{params[:id]}"
  @game_load=@game.method(@method).call
  @level=Level.find(@user.level_id)
end



end
