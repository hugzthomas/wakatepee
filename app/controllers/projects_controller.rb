class ProjectsController < ApplicationController
before_action :set_project, only: [:show, :edit, :update]

  def index
    @projects = policy_scope(Project) # Restaurant.all
  end

  def show
    authorize(@project)
  end

  def new
    @project = Project.new
    authorize(@project)
  end

  def create

    @project = Project.new(project_params)
    @project.admin = current_user
    authorize(@project)

    if @project.save
      redirect_to new_project_user_project_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
     if @project.update(project_params)
      redirect_to @project
    else
      render :edit
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :deadline)
  end

end
