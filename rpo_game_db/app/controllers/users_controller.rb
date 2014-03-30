class UsersController < ApplicationController

  before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
    @games = @user.games
    @characters= @user.characters
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

  helper_method :errors_for
  def errors_for(attribute)
    if @user.errors[attribute].present?
      @user.errors.full_messages_for(attribute).join("\n")
    end
  end


  private
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :photo_url)
  end

end
