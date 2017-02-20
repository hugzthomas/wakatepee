class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.date :deadline
      t.string :logo
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
