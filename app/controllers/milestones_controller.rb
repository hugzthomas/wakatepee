class MilestonesController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @milestone = Milestone.new
  end

  def create
    @project = Project.find(params[:project_id])
    @title = params[:milestone][:title]
    @milestone = Milestone.new(title: @title)
    authorize(@project)
    @milestone.save
    redirect_to project_path(@project)
  end

  def edit

  end

  def update

  end


  private

  def milestone_params
    params.require(:milestone).permit(:title)
  end

end
