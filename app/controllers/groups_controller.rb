class GroupsController < ApplicationController
  # before_action :is_authenticated?, except: [:index]
  def update
    u = User.find(params[:id])
    u.update(group_params)
    redirect_ro group_path
  end


  def index
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
    @group = Group.find(params[:id])
    @users = User.all
  end

  def destroy
  end

  def fishing
  end

  def camping
  end

  def rapids
  end

  def recreational
  end

  def lakes
  end

  def ocean
  end

  def group_params
    params.require(:group).permit(:name, :group, :info, :user_ids => [])
  end

end
