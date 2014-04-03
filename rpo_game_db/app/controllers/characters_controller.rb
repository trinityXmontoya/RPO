class CharactersController < ApplicationController

  def index
    @characters=Character.all
    @enemies=Enemy.all
  end

end
