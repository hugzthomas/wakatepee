class SubMilestonesController < ApplicationController

  def create
    skip_authorization
    @project = Project.find(params[:project_id])
    @milestone = Milestone.find(params[:sub_milestone][:milestone_id])
    @sub_milestone = SubMilestone.new(submilestone_params)
    @sub_milestone.project = @project
    @sub_milestone.milestone = @milestone
    if @sub_milestone.save
      respond_to do |format|
        format.html { redirect_to project_path(@project)}
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'projects/index'}
        format.js
      end
    @selected_milestone_id = @sub_milestone.milestone_id
    redirect_to project_path(@sub_milestone.project, selected_milestone_id: @selected_milestone_id, anchor: @sub_milestone.milestone.title)
    end
  end


  def update
    skip_authorization
    @sub_milestone = SubMilestone.find(params[:id]);
    @sub_milestone.done = params[:done] unless params[:done].blank?
    @sub_milestone.file = params[:sub_milestone][:file] if !params[:sub_milestone].nil? && !params[:sub_milestone][:file].blank?
    @sub_milestone.save
    @project = @sub_milestone.project
    @milestone = @sub_milestone.milestone
    @milestone.progress = @milestone.perform_progress
    @milestone.save
    # redirect_to project_path(@project)
    respond_to do |format|
      format.html { redirect_to project_path(@project) }
      format.js
    end
  end

  def destroy
    skip_authorization
    @sub_milestone = SubMilestone.find(params[:id])
    # authorize @sub_milestone
    @project = @sub_milestone.project
    @milestone = @sub_milestone.milestone
    @sub_milestone.destroy
    redirect_to project_path(@project, anchor: @milestone.title)
  end

  private

  def submilestone_params
    params.require(:sub_milestone).permit(:title, :project_id, :milestone_id, :file)
  end
end
