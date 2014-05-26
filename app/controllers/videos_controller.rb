class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    if @video.save
      redirect_to notnice_path
    else
      redirect_to new_video_path
    end
  end

  def destroy
    Video.find_by(params:[:id]).destroy
    redirect_to notnice_path
  end

  def video_params
    params.require(:video).permit(
      :url,
      :description
    )
  end
end
