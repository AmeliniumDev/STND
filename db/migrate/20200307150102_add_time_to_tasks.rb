class AddTimeToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :hours, :integer, default: 0
    add_column :tasks, :minutes, :integer, default: 0
  end
end
