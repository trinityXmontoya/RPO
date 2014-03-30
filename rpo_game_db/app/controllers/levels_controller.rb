class LevelsController < ApplicationController

  def index
    @character=Character.find(params[:character_id])
    @user=User.find(session[:user_id])
    @character.levels.each do |level|
      if current_user.levels.includes? level
        @levels << level
      end
      return @levels
    end
  end

end
