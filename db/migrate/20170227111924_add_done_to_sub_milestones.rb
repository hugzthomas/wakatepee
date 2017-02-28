class AddDoneToSubMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_milestones, :done, :boolean, default: false
  end
end
