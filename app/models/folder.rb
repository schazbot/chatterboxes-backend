class Folder < ApplicationRecord
    belongs_to :user
    has_many :folder_pictures
    has_many :pictures, through: :folder_pictures
end
