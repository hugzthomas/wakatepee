class UserProjectsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @user_project = UserProject.new(project: @project)
    authorize(@user_project)
  end

  def create
    @user_project = UserProject.new(user_project_params)
    @user_project.user = current_user
    authorize(@user_project)
  end

  private

  def user_project_params
    params.require(:user_project).permit(:user_id, :project_id)
  end

end

# UserProject.new.project = @project
# @project = Project.new(project_params)
#     @project.admin = current_user
#     authorize(@project)

#     if @project.save
#       redirect_to new_user_project_path(@project)
#     else
#       render :new
#     end
