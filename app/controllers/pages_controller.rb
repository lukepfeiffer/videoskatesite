class PagesController < ApplicationController
  def home
  end

  def notnice
  end

  def log_out

  end

  def log_in
    @user = User.new
  end
end
