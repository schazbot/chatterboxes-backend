class Picture < ApplicationRecord
has_many :folder_pictures
has_many :folders, through: :folder_pictures
end
