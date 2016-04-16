class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.owner = current_user.id
    if @group.save
      flash[:success] = "You created your group!"
      redirect_to groups_path
    else
      render group_path
    end
  end

  def show
    @group = Group.find(params[:id])
    @users_group = @group.users
  end

  private
  def group_params
    params.require(:group).permit(:title, :description, :owner, :isPublic)
  end


end
