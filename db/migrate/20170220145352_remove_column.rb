class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :user_id
    add_reference :projects, :admin, index: true
    add_foreign_key :projects, :users, column: :admin_id
  end
end
