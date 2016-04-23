class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show_partials
    %w[posts groups photos]
  end

  def show
    @user = User.find(params[:id])
    @view = show_partials.include?(params[:view]) ? params[:view] : 'posts'
    @groups = Group.where(:owner_id => @user.id).all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password, :picture)
  end
end


