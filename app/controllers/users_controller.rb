class UsersController < ApplicationController
  
  before_action :is_authenticated?, except: [:index, :new, :create, :show]
  # before_action :current_user, except: [:index, :new, :create, :show]
  # before_action :current_user

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
      flash[:Success] = "login successful"
      redirect_to root_path
    else
      flash[:Error] = user.errors.messages
      redirect_to new_user_path
    end
  end

  def edit
    # @user = User.update(user_params2)
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:Success] = "Profile has been updated"
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :gender, :skill_level, :city, :more_info)
  end

  # may or may not need this. Keep it for now.
  # def user_params2
  #   params.require(:user).permit(:password, :password_confirmation, :gender, :skill_level, :city, :more_info)
  # end
end
