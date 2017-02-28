class AddPogressToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :progress, :integer
  end
end
