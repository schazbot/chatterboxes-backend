class UserSerializer < ActiveModel::Serializer
  # has_many :pictures, through: :folders

  attributes :id, :folders

  def folders
    object.folders.map do |folder|
      {
        id: folder.id,
        name: folder.name,
        pictures: folder.pictures.map do |p|
          {
            id: p.id,
            text: p.text,
            url: p.url
          }
        end
      }
    end 

  end

end
