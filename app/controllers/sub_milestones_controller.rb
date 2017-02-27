class SubMilestonesController < ApplicationController

  def create
    skip_authorization
    @project = Project.find(params[:project_id])
    @milestone = Milestone.find(params[:sub_milestone][:milestone_id])
    @sub_milestone = SubMilestone.new(submilestone_params)
    @sub_milestone.project = @project
    @sub_milestone.milestone = @milestone
    @sub_milestone.save
    @selected_milestone_id = @sub_milestone.milestone_id
    redirect_to project_path(@sub_milestone.project, selected_milestone_id: @selected_milestone_id, anchor: @sub_milestone.milestone.title)
  end

  private

  def submilestone_params
    params.require(:sub_milestone).permit(:title, :project_id, :milestone_id)
  end
end