class UserReposController < ApplicationController

  def new
    @users = User.all
    @user_repo = UserRepo.new
  end

  def create
    @user_repo = UserRepo.create(user_repo_key)
    redirect_to @user_repo
  end

  private
  def user_repo_key
    params.require(:user).permit(:user_repo_id, )
  end

end
