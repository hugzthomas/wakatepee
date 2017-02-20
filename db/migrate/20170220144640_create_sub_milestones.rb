class CreateSubMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_milestones do |t|
      t.string :title
      t.references :milestone, foreign_key: true

      t.timestamps
    end
  end
end
