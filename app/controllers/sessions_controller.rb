class SessionsController < ApplicationController
  def new
  end

  def create
    p @current_user
    user = User.authenticate(user_params)
    if user
      session[:user_id] = user.id 
      flash[:success] = "You are logged in"
      redirect_to root_path
    else
      flash[:Oops!] = "Incorrect email and/or password"
      redirect_to login_path
    end
  end

  def destroy
    p @current_user
    session[:user_id] = nil
    flash[:success] = "You are logged out"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
