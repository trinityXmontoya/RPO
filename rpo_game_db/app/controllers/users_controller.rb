class UsersController < ApplicationController

  before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
    @games = @user.games
    @characters= @user.characters
    score=0
    @user.games.each do |game|
      score+=game.points
    end
    @user.score=score
    # is there a better way to do this?
    @user.update_column(:score, score)
  end

  def new
    @user=User.new
  end

  def create
    @user= User.new(user_params)
    @user.score=0
    @user.character_id=nil
    @user.level_id=nil
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user=User.find(params[:id])
    if current_user == @user
      render 'edit'
    else
      flash[:notice] = "Sorry, you are not authorized to edit that user."
      redirect_to users_path
    end
  end

  def update
    @user = User.find(params[:id])
    if current_user == @user
      @user.update(user_params)
        if @user.save
        redirect_to @user
        else
        render 'edit'
        end
    else
    flash[:notice] = "Sorry, you are not authorized to edit that user."
    redirect_to users_path
    end
  end

  def destroy
    @user=User.find(params[:id])
    if current_user == @user
    session[@user.id]=nil
    @user.destroy
    redirect_to users_path
    else
    flash[:notice] = "Sorry, you are not authorized to delete that user."
    redirect_to users_path
    end
  end


  private
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :photo_url)
  end

end
