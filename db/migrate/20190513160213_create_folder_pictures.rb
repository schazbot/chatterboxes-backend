class CreateFolderPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :folder_pictures do |t|

      t.timestamps
    end
  end
end
