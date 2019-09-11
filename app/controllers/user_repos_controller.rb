class UserReposController < ApplicationController

  def show
    @user_repos = UserRepo.all
    @user_repo = UserRepo.find(params[:id])
  end

  def new
    @videos = Video.all
    @users = User.all
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
