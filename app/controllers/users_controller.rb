class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_key)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path #throw them back to the log_in page
    end
  end

  def show
    @user = User.find(params[:id])
    unless @logged_in_user && @logged_in_user == @user
      flash[:errors] = ["You don't have permission to see that page"]
      redirect_to new_login_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_key)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path #throw them back to the log_in page
    end
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
    params.require(:user).permit(:username, :password, :name,:age,:gender,:food_intake,:medications,:hours_of_sleep,:exercise,:shower, :medical_history, :weight, :height, :weight_goal, :exercise_goal)
  end

end
