class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @tasks = Task.where(user: current_user)
  end

  def new
    @team = Team.find(params[:team_id])
    @task = Task.new
  end

  def create
    @team = Team.find(params[:team_id])
    @task = Task.new(task_params)
    @team.task = @task
    if @task.save
      redirect_to team_task_path(@task)
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    if @task.update(task_params)
      redirect_to team_task_path(@task)
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to team_tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:user, :title, :description, :deadline, :etc, :urgent)
  end
end
