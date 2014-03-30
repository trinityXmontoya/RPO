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
    if @level.id == 1
      @content="Do you climb the mountain or hill?"
      @option1="Climb Mountain."
      @option2="Climb Hill"
    elsif @level.id == 2
      @option1="Scale Tree"
      @option2="Scale Building"
      @content="Do you scale the tree or the building?"
    end
  end

  def begin
    @user=User.find(session[:user_id])
    @level=Level.find(params[:id])
    if @level.id == 1 && params[:]==
      @content="Do you climb the mountain or hill?"
      @option1="Climb Mountain."
      @option2="Climb Hill"
    else @level.id == 1 &&
      @content="Do you climb the mountain or hill?"
      @option1="Climb Mountain."
      @option2="Climb Hill"
    elsif @level.id == 2
      @option1="Scale Tree"
      @option2="Scale Building"
      @content="Do you scale the tree or the building?"
    end


  end

  def game
    @game=Game.find(params[:game_id])
    redirect_to game_path(@game)
  end

  def end
  end


end
