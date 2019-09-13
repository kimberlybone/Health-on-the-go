class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def show_my_videos
    @user = User.find(session[:user_id])
    # byebug
    @myvideos = Event.where(@user.user_repos)

    render :my_videos
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.create(video_key)
    redirect_to @video
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_key)
    redirect_to @video
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
  end

  private

  def video_key
    params.require(:video).permit(:url, :description, :title)
  end
end
