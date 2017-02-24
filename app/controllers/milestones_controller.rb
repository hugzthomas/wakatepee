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
    if @milestone.save
      @project_milestone = ProjectMilestone.new(milestone: @milestone, project: @project)
      authorize(@project)
      @project_milestone.save
      respond_to do |format|
        format.html { redirect_to project_path(@project) }
        format.js  # <-- will render `app/views/projects/create_milestone.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'project/show' }
        format.js  # <-- idem
      end
    end

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
