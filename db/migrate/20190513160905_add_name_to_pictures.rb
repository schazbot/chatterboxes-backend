class AddNameToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :text, :string
    add_column :pictures, :url, :string
  end
end
