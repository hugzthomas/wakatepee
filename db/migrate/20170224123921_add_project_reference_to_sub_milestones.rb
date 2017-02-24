class AddProjectReferenceToSubMilestones < ActiveRecord::Migration[5.0]
  def change
    add_reference :sub_milestones, :project, foreign_key: true
  end
end
