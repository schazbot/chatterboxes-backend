class AddNameToFolders < ActiveRecord::Migration[5.2]
  def change
    add_column :folders, :name, :string
  end
end
