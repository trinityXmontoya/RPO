class MainController < ApplicationController

  def new_game
    @characters=Character.all
  end

  def welcome
    @users=User.find(session[:user_id])
    @friends=@users.friends
    @comments=Comment.all
  end

end
