class GroupsController < ApplicationController
  # before_action :is_authenticated?, only: [:update, :edit, :create, :destroy, :fishingAdd, :campingAdd, :rapidsAdd, :recreationalAdd, :lakesAdd, :oceanAdd]
  before_action :is_authenticated?, except: [:index, :new, :create, :show]

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

  def fishingAdd
    fishing = Group.find(1)
    fishing.users << current_user
  end 

  def camping
  end

  def campingAdd
    camping = Group.find(2)
    camping.users << current_user
  end


  def rapids
  end

  def rapidsAdd
    rapids = Group.find(3)
    rapids.users << current_user
  end

  def recreational
  end

  def recreationalAdd
    recreational = Group.find(4)
    recreational.users << current_user
  end

  def lakes
  end

  def lakesAdd
    lakes = Group.find(5)
    lakes.users << current_user
  end

  def ocean
  end

  def oceanAdd
    ocean = Group.find(6)
    ocean.users << current_user
  end

  def group_params
    params.require(:group).permit(:name, :group, :info, :user_ids => [])
  end

end
