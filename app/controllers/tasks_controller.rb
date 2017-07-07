class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = current_user.tasks
  end
  
  def new
    @task = Task.new
    @projects = current_user.projects
    @contexts = current_user.contexts
  end

  def create
    @task = Task.new
    @params = params[:task]
    @task.user = current_user
    @task.name = @params[:name]
    @task.priority = @params[:priority]
    @task.contexts << Context.find(@params[:contexts])
    @task.projects << Project.find(@params[:projects])
    if @task.save
      redirect_to tasks_path
    else
      redirect_to new_task_path
    end
  end

  def edit
    @task = Task.find(params[:id])
    @projects = current_user.projects
    @contexts = current_user.contexts
  end

  def update
    @task = Task.find(params[:id])
    @params = params[:task]
    @task.user = current_user
    @task.name = @params[:name]
    @task.priority = @params[:priority]
    @task.contexts << Context.find(@params[:contexts])
    @task.projects << Project.find(@params[:projects])
    if @task.save
      redirect_to tasks_path
    else
      redirect_to new_task_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name,:due,:priority,:contexts,:projects)
  end
end
