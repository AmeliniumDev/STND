class TasksController < ApplicationController
  before_action :find_team, only: %i[index new create edit update user_tasks destroy]
  before_action :find_task, only: %i[show edit update destroy]

  def index
    # showing tasks only belonging to the team
    @tasks = Task.where(team: @team).reorder('deadline ASC', 'urgent DESC', 'etc ASC')
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
  end

  def update
    if @task.update(task_params)
      redirect_to team_tasks_path(@team) #request.referrer
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to team_tasks_path
  end

  def user_tasks
    @tasks = Task.where(user: current_user, team: @team, complete: false)
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :title, :description, :deadline, :etc, :urgent, :hours, :minutes, :complete)
  end

  def find_team
    @team = Team.find(params[:team_id])
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
