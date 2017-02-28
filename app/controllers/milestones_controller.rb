class MilestonesController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @milestone = Milestone.new
  end

  def create
    @project = Project.find(params[:project_id])
    @title = params[:milestone][:title]
    @milestone = Milestone.new(title: @title, progress: 0)
    authorize(@project)
    if @milestone.save
      @project_milestone = ProjectMilestone.new(milestone: @milestone, project: @project)
      authorize(@project)
      @project_milestone.save
      redirect_to project_path(@project)
    end

  end

  def edit

  end

  def update
  end

  def destroy
    skip_authorization
    @milestone = Milestone.find(params[:id])
    @project = @milestone.project_milestones.first.project
    @milestone.destroy
    redirect_to project_path(@project)
  end


  private

  def milestone_params
    params.require(:milestone).permit(:id, :title, :progress)
  end

end
