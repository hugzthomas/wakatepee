class UserProjectsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @user_project = UserProject.new(project: @project)
    authorize(@user_project)
  end

  def create
    @project = Project.find(params[:project_id])
    members = params[:user_id]
    members.each do |member|
      @user = User.find(member)
      @user_project = UserProject.new(user: @user, project: @project)
      authorize(@user_project)
      @user_project.save
    end
    redirect_to project_path(@project)
  end

  private

  def user_project_params
    params.require(:user_project).permit(:user_id, :project_id)
  end

end
