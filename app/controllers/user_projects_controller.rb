class UserProjectsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @user_project = UserProject.new(project: @project)
    authorize(@user_project)
  end

  def create
    @project = Project.find(params[:project_id])
    params.keys.each do |u|
      if u.include?("user")
        @user = User.find(params[u])
        @user_project = UserProject.new(user: @user, project: @project)
        authorize(@user_project)
        @user_project.save
      end
    end
    redirect_to project_path(@project)
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
