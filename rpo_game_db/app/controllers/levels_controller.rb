class LevelsController < ApplicationController


  def index
    @character=Character.find(params[:character_id])
    @user=User.find(session[:user_id])
    @user.characters << @character
    @levels=[]
    @character.levels.each do |level|
      if current_user.levels.include? level
        @levels << level
      end
      return @levels
    end
  end

  def show
    @user=User.find(session[:user_id])
    @level=Level.find(params[:id])
    @user.levels << @level
  end

end
