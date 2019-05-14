class AddForeignKeysToFolderPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :folder_pictures, :folder, foreign_key: true
    add_reference :folder_pictures, :picture, foreign_key: true
  end
end
