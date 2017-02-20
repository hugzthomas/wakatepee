class ChangeDateToTime < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :deadline, :datetime
  end
end
