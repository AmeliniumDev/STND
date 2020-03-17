class AnalyticsController < ApplicationController
  def index
    @tasks = Task.where(team: @team, complete: false).reorder('deadline ASC', 'urgent DESC', 'etc ASC')
  end
end

#interact here with database
