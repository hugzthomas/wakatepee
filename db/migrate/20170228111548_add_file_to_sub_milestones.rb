class AddFileToSubMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_milestones, :file, :string
  end
end
