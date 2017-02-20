class AddColumnToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :sub_milestone, index: true
    add_foreign_key :comments, :sub_milestones, column: :sub_milestone_id
  end
end
