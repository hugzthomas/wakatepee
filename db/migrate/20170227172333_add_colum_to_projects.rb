class AddColumToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :brief, :string
  end
end
