class User < ApplicationRecord
    has_many :folders
    has_many :pictures, through: :folders
end
