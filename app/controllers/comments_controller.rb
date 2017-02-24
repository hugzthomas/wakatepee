class CommentsController < ApplicationController

  def new
    @sub_milestone = SubMilestone.find(params[:sub_milestone_id])
    @comment = Comment.new
  end

  def create
    @sub_milestone = SubMilestone.find(params[:sub_milestone_id])
    @comment = Comment.new(comment_params)
    raise
    @comment.save
    redirect_to sub_milestone_path(@sub_milestone)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :sub_milestone_id)
  end

end
