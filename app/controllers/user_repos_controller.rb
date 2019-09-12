class UserReposController < ApplicationController

  def index
    @user_repos = UserRepo.all
  end

  def show
    # if !@user_repo
    #   redirect_to new_user_repo_path
    # end
    @user_repo = UserRepo.find(params[:id])
    # @reminder = Reminder.find(params[:id])
    @recipes = Recipe.all
  end

  def new
    @users = User.all
    @user_repos = UserRepo.all
    @user_repo = UserRepo.new
  end

  def create
    # byebug
    @user_repo = UserRepo.create(user_repo_key)
    # byebug
    redirect_to @user_repo
  end

  private
  def user_repo_key
    params.require(:user_repo).permit(:user_id, :relaxation, :recipes, :events, :exercise_videos )
  end

end
