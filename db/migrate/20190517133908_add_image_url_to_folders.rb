class AddImageUrlToFolders < ActiveRecord::Migration[5.2]
  def change
    add_column :folders, :image_url, :string
  end
end
