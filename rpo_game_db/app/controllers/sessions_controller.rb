class SessionsController < ApplicationController


  def new

  end

  def create
    # option to login with email or username
    if params[:email_or_username].include? "@"
      @user = User.find_by(email: params[:email_or_username])
    else
      @user = User.find_by(username: params[:email_or_username])
    end

    # if the user exists and is authenticated, create session
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    # if the user info provided does not exist, redirect to login
    else
      flash[:notice]="USER NOT FOUND. Double check login info or create new account"
      render 'new'
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path
  end

end
