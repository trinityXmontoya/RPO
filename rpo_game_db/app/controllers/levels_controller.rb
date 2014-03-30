class LevelsController < ApplicationController

  def index
    @character=Character.find(params[:character_id])
    @levels=@character.levels
  end
end
