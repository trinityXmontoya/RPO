class GamesController < ApplicationController

def show
  @game=Game.find(params[:id])
  @method="game_#{params[:id]}"
  @game_load=@game.method(@method).call
  @level=Level.find(1)
end



end
