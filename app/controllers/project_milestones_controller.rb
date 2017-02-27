class ProjectMilestonesController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @project_milestone = ProjectMilestone.new(project: @project)
    authorize(@project)
  end

  def create
    @project = Project.find(params[:project_id])
    milestones = params[:milestone_id]
    milestones.each do |milestone|
      @milestone = Milestone.find(milestone)
      @project_milestone = ProjectMilestone.new(milestone: @milestone, project: @project)
      authorize(@project)
      @project_milestone.save
    end
    redirect_to project_path(@project)
  end


end
