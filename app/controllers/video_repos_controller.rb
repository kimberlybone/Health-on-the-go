class VideoReposController < ApplicationController
  def new
    @videos = Video.all
    @user_repos = UserRepo.all
    @video_repo = VideoRepo.new
  end

  def create
    @video_repo = VideoRepo.create(video_repo_key)
    redirect_to @video_repo
  end

  private
  def video_repo_key
    params.require(:user).permit(:user_repo_id, :video_id)
  end

end
