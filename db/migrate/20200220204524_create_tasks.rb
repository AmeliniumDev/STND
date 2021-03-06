class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.float :etc
      t.boolean :urgent
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
