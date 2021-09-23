class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find, only: %i[edit show update destroy]

  def index
    @projects = Project.all
    @users = User.all
    @user = current_user
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
  end

  def edit
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(projects_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def update
      @project.update(projects_params)
    redirect_to project_path
  end

  def destroy
      @project.delete
    redirect_to projects_path
  end

  private

  def projects_params
    params.require(:project).permit(:name, :url, :content)
  end

  def find
    @project = Project.find(params[:id])
  end


end
