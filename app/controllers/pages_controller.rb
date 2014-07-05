class PagesController < ApplicationController
  def home
    @video = Video.last
  end

  def log_in
    @user = User.new
  end
end
