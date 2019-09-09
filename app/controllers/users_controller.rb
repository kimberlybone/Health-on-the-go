class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_key)
    redirect_to @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_key)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_key
    params.require(:user).permit(:username,:password,:name,:age,:gender,:food_intake,:medications,:hours_of_sleep,:exercise,:shower, :medical_history, :weight, :height, :weight_goal, :exercise_goal)
  end

end
