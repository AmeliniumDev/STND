class TasksController < ApplicationController
  before_action :find_team, only: %i[index new create user_tasks]

  def index
    # showing tasks only belonging to the team
    @tasks = Task.where(team: @team)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.team = @team
    if @task.save
      redirect_to team_tasks_path(@team)
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

  def user_tasks
    @tasks = Task.where(user: current_user, team: @team)
  end

  private

  def task_params
    params.require(:task).permit(:user, :title, :description, :deadline, :etc, :urgent)
  end

  def find_team
    @team = Team.find(params[:team_id])
  end
end
