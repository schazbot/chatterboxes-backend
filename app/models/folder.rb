class Folder < ApplicationRecord
    belongs_to :user
    has_many :folder_pictures, dependent: :destroy
    has_many :pictures, through: :folder_pictures
end
