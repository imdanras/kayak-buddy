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
    @group.users.each do |user|
      @group = Group.find(2)
      
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
    @fishing = Group.find(1)
    @user_paginator = User.paginate(:page => params[:page], :per_page => 10)
    @user = @user_paginator
  end

  def fishingAdd
    fishing = Group.find(1)
    fishing.users << current_user
  end 

  def camping
    @camping = Group.find_by_id(2)
    puts '*************'
    puts @camping
    puts '*************'
    @user_paginator = User.paginate(:page => params[:page], :per_page => 10)
    @users = @user_paginator
  end

  def campingAdd
    camping = Group.find(2)
    camping.users << current_user
  end


  def rapids
    @rapids = Group.find(3)
    @user_paginator = User.paginate(:page => params[:page], :per_page => 10)
    @user = @user_paginator
  end

  def rapidsAdd
    rapids = Group.find(3)
    rapids.users << current_user
  end

  def recreational
    @recreational = Group.find(4)
    @user_paginator = User.paginate(:page => params[:page], :per_page => 10)
    @user = @user_paginator
  end

  def recreationalAdd
    recreational = Group.find(4)
    recreational.users << current_user
  end

  def lakes
    @lakes = Group.find(5)
    @user_paginator = User.paginate(:page => params[:page], :per_page => 10)
    @user = @user_paginator
  end

  def lakesAdd
    lakes = Group.find(5)
    lakes.users << current_user
  end

  def ocean
    @ocean = Group.find(6)
    @user_paginator = User.paginate(:page => params[:page], :per_page => 10)
    @user = @user_paginator
  end

  def oceanAdd
    ocean = Group.find(6)
    ocean.users << current_user
  end

  def group_params
    params.require(:group).permit(:name, :group, :info, :user_ids => [])
  end

end
end
