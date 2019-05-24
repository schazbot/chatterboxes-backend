class UserSerializer < ActiveModel::Serializer
  # has_many :pictures, through: :folders

  attributes :id
  has_many :folders

  # def folders
  #   object.folders.map do |folder|
  #     {
  #       id: folder.id,
  #       name: folder.name,
  #       image_url: folder.image_url,
  #       pictures: folder.pictures.map do |p|
  #         {
  #           id: p.id,
  #           text: p.text,
  #           url: p.url
  #         }
  #       end
  #     }
  #   end 

  # end

end
