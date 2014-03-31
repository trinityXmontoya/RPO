class MainController < ApplicationController

  def new_game
    @characters=Character.all
  end

  def welcome
    @users=User.all
  end

end
