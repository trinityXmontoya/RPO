class UsersController < ApplicationController

  before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
    @games = @user.games
    @characters= @user.characters

    #SCORE METHOD from user model
    score=@user.calculate_score
    @user.update_attribute(:score, score)

    unless current_user
      flash[:notice]="You must login to see that information."
      redirect_to login_path
    end
  end

  def new
    @user=User.new
  end

  def create
    @user= User.new(user_params)
    @user.character_id=nil
    @user.level_id=nil
    if @user.save
      session[:user_id] = @user.id
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
      flash[:notice] = "You are not authorized to edit that user."
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
    flash[:notice] = "You are not authorized to edit that user."
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
    flash[:notice] = "You are not authorized to delete that user."
    redirect_to users_path
    end
  end

  def follow
    @user=User.find(params[:user_id])
    current_user.follow(@user)
    flash[:notice]="You are now following #{@user.username}!"
    redirect_to user_path(@user)
  end

  def unfollow
    @user=User.find(params[:user_id])
    current_user.unfollow(@user)
    flash[:notice]="You have unfollowed #{@user.username}"
    redirect_to user_path(@user)
  end

  def block
    @user=User.find(params[:user_id])
    current_user.block(@user)
    flash[:notice]="You have blocked #{@user.username}"
    redirect_to user_path(@user)
  end

  def unblock
    @user=User.find(params[:user_id])
    current_user.unblock(@user)
    flash[:notice]="You have unblocked #{@user.username}"
    redirect_to user_path(@user)
  end

  def add_comment
     @user=User.find(params[:user_id])
     @author=current_user
     Comment.create(
      :user=>@user,
      :author_id=>@author.id,
      :content=>params[:content])
     redirect_to user_path(@user)
  end

  private
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :photo_url)
  end

  def comment_params
    params.require(:comment).permit(:author,:user,:content)
  end

end
