class ProjectsController < ApplicationController
before_action :set_project, only: [:show, :edit, :update]


  def index
    @projects_admin = policy_scope(Project.where(admin: current_user)) # Projects.all where the current user is admin
    @projects_collaborator = policy_scope(UserProject.where(user: current_user)).map{ |user_project| user_project.project }  #UserProject.all where the current user is a user
    @project = Project.new
  end

  def show
    authorize(@project)
    @selected_milestone_id = params[:selected_milestone_id].to_i
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
      respond_to do |format|
        format.html { redirect_to new_project_user_project_path(@project) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'projects/index' }
        format.js  # <-- idem
      end
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
    params.require(:project).permit(:title, :deadline, :photo, :photo_cache)
  end




end
