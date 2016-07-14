class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    render json: params
  end

  def edit
  end

  def destroy
  end
end
