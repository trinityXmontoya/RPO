class MainController < ApplicationController

  def new_game
    @characters=Character.all
  end

  def welcome
    if current_user
    @user=User.find(session[:user_id])
    @friends=@user.friends
    @comments=Comment.all
  else
    redirect_to login_path
   end
  end

end
