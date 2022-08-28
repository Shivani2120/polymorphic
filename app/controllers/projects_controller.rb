class ProjectsController < ApplicationController
    before_action :authenticate_user!

    def index
       @projects = current_user.projects
    end

    def show
        @project = current_user.projects.find(params[:id])
        @task = @project.tasks.build
    end
    
    def new
        @project = current_user.projects.build
    end

    def edit 
       @project = current_user.projects.find(params[:id]) 
    end

    def create
        @project = current_user.projects.build(params_project)
        if @project.save
            redirect_to @project, notice: "Project was succefully created"
        else
            render :new
        end
    end

    def update
        @project = current_user.projects.find(params[:id])
        if @project.update(params_project)
            redirect_to @project, notice: "Project succefully updated"
        else
            render :edit 
        end
    end

    def destroy
        @project = current_user.projects.find(params[:id])
        if @project.destroy
            redirect_to @project
        else 
            notice "There is no data"
        end
    end
    
    private 
    def params_project
       params.require(:project).permit(:name, :description, :user_id)
    end    

end
