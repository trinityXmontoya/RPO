class MainController < ApplicationController

  def new_game
    @characters=Character.all
  end

end
