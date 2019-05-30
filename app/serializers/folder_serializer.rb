class FolderSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url
  has_many :pictures
end
