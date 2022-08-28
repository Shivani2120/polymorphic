class TasksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project

    def index
        @tasks = @project.tasks
    end

    def show
        @task = @project.tasks.find(params[:id])
    end

    def new
        @task = @project.tasks.build
    end 

    def edit
        @task = @project.tasks.find(params[:id])
    end

    def create
        @task = @project.tasks.build(task_params)
        if @task.save
            redirect_to @project
        else
            render :new
        end
    end

    def update
        @task = @project.tasks.find(params[:id])
        if @task.update(task_params)
            redirect_to(@task.project)
        else
            render :edit
        end
    end

    def destroy
        @task = @project.tasks.find(params[:id])
        if @task.destroy
            redirect_to @project
        else
            notice "There is no data"
        end
    end

    private
    
    def set_project
        @project = current_user.projects.find(params[:project_id])
    end
        

    def task_params
        params.require(:task).permit(:name, :description, :status, :project_id)
    end
end
