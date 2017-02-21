class ChangeLogoName < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :logo, :photo
  end
end
