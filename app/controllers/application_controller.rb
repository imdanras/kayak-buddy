class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# before we access any page, we're goin to set the session to the current user
  before_action = :current_user

  def is_authenticated?
    unless current_user
      flash[:error] = 'Invalid Credentials'
      redirect_to login_path
    end
  end

  def current_user
    # only going to run right side if current user is falsey
    # refers to users controller:  session[:user_id] = user.id
    @current_user ||= User.find_by_id(session[:user_id])
  end

end
