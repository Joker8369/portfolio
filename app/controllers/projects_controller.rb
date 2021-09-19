class ProjectsController < ApplicationController
  before_action :find, only: %i[edit update show destroy]
  before_action :projects_params, only: %i[edit update find]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(projects_params)
    if @project.save
      redirect_to projects_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(projects_params)
  end

  def destroy
    @project.delete
    redirect_to projects_path
  end

  private

  def projects_params
    @project = Project.find(:id)
    params.require(:project).permit(:name, :url, :content)
  end

  def find
    @project = Project.find(params[:id])
  end
end
