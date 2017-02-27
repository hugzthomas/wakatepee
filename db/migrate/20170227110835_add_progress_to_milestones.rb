class AddProgressToMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :milestones, :progress, :integer
  end
end
