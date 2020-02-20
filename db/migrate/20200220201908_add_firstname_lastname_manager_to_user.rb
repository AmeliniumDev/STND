class AddFirstnameLastnameManagerToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :manager, :string, default: false, null: false
    add_reference :users, :company, foreign_key: true
  end
end
