class CreateProjectMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :project_milestones do |t|
      t.references :project, foreign_key: true
      t.references :milestone, foreign_key: true

      t.timestamps
    end
  end
end
