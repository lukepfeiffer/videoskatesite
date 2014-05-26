class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to notnice_path
    else
      redirect_to new_comment_path
    end
  end

  def destroy
    Comment.find_by(params:[:id]).destroy
    redirect_to notnice_path
  end

  def comment_params
    params.require(:comment).permit(
      :comment
    )
  end
end
