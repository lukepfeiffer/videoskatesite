class PagesController < ApplicationController
  def home
    @video = Video.last
  end
end
