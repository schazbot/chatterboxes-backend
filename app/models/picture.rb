class Picture < ApplicationRecord
has_many :folder_pictures, dependent: :destroy
has_many :folders, through: :folder_pictures
end
