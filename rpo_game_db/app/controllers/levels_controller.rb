class LevelsController < ApplicationController


  def index
    @character=Character.find(params[:character_id])
    @user=User.find(session[:user_id])

    if !@user.characters.include? @character
    @user.characters << @character
    end

    @user.update_attribute(:character_id,@character.id)

    if !@user.levels.include? @character.levels.first
    @user.levels<<@character.levels.first
    end

    @levels=[]
    @character.levels.each do |level|
      if @user.levels.include? level
        @levels << level
      end
    end

    # MASTERMIND START OVER
    $guesses=[]

  end

  def show
    @user=User.find(session[:user_id])
    @level=Level.find(params[:id])
    if !@user.levels.include? @level
      @user.levels << @level
    end

    @user.update_attribute(:level_id,@level.id)

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
    if @level.id == 1
      if params[:choice]=="1"
        @content="Mountain! Do you swim or sink?"
        @option1="Swim."
        @option2="Sink"
      else
        @content="Hill!Tumble or Fall?"
        @option1="Tumble."
        @option2="Fall"
      end
      @game=@level.games[0]
    elsif @level.id == 2
      if params[:choice]=="1"
      @content="Tree!"
      @option1="Climb It."
      @option2="Shake it"
      else
      @content="Building!"
      @option1="Rob it"
      @option2="Examine it"
      end
      @game=@level.games[1]
    end
  end


  def end
    @user=User.find(session[:user_id])
    @level=Level.find(params[:id])

    @level.games.each do |x|
      if !@user.games.include? x
        @user.games << x
      end
    end

    @character=Character.find(@user.character_id)
    # if @user.levels.pluck(:level_id).uniq.length < 6
      if @user.levels.length < 6
      @user.levels<<Level.find(params[:id].to_i+1)
      end
  end


end
