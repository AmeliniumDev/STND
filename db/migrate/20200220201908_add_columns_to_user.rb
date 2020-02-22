class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :manager, :boolean, default: false, null: false
    add_reference :users, :team, foreign_key: true
  end
end
