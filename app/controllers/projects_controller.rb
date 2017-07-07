class ProjectsController < ApplicationController
  before_action :authenticate_user!
  def index
    @projects = current_user.projects
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user;
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
