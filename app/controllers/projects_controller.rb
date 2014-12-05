class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    flash[:notice] = "Project was successfully created."
    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    flash[:notice] = "Project was successfully updated."
    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.delete
    flash[:notice] = "Project was successfully deleted."
    redirect_to projects_path
  end


  private

  def project_params
    params.require(:project).permit(:name)
  end
end
