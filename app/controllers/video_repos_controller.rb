class VideoReposController < ApplicationController
  def show
    @video_repo = VideoRepo.find(params[:id])
  end

  def new
    @video_repo = VideoRepo.new
    @videos = Video.all
    @user_repos = UserRepo.all
  end

  def create
    @video_repo = VideoRepo.create(video_repo_key)
    redirect_to @video_repo
  end

  def edit
    @videos = Video.all
    @user_repos = UserRepo.all
    @video_repo = VideoRepo.find(params[:id])
  end

  def update
    @video_repo = VideoRepo.find(params[:id])
    @video_repo.update(video_repo_key)
    redirect_to @video_repo
  end

  def destroy
    @video_repo = VideoRepo.find(params[:id])
    @video_repo.destroy
  end

  def video_repo_key
    params.require(:video_repo).permit(:user_repo_id, :video_id)
  end

end
