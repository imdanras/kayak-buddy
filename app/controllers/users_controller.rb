class UsersController < ApplicationController
  
  # before_action :is_authenticated?, except: [:index, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    # render json: params
    @user = User.find(params[:id])
  end

  def create
    # render json: params
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:Error] = user.errors.messages
      redirect_to new_user_path
    end
  end

  def edit
  end

  def destroy
  end

  private

  def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :gender, :skill_level, :city, :more_info)
  end
end
