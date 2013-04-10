class ProjectsController < ApplicationController

def index
    @projects = Project.all
end

def create
    @project = Project.new(params[:project])
    if @project.save
        redirect_to @project
    else
        render action: :index
    end
end

def show
    @project = Project.find(params[:id])
end

end
