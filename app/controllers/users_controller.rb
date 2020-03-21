class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks.where(complete: false).reorder('deadline ASC', 'urgent DESC', 'etc ASC')
    @team = @user.team
    @completed_tasks = Task.where(team: @team, complete: true, user: @user).reorder('deadline ASC', 'urgent DESC', 'etc ASC')
  end
end
