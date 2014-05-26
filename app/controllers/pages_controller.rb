class PagesController < ApplicationController
  def home
    @video = Video.last
  end

  def notnice
    @videos = Video.all
    @comments = Comment.all
    @comment = Comment.new
  end

  def log_out

  end

  def log_in
    @user = User.new
  end
end
