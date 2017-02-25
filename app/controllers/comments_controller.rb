class CommentsController < ApplicationController

  def create
    skip_authorization
    @sub_milestone = SubMilestone.find(params[:sub_milestone_id])
    # @sub_milestone.comments.build(comment_params)
    @comment = Comment.new(comment_params)
    @comment.sub_milestone = @sub_milestone
    @comment.user = current_user
    @comment.save
    @selected_milestone_id = @sub_milestone.milestone_id
    redirect_to project_path(@sub_milestone.project, selected_milestone_id: @selected_milestone_id, anchor: @sub_milestone.milestone.title )
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :sub_milestone_id)
  end

end
