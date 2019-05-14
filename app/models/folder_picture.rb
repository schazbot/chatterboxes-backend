class FolderPicture < ApplicationRecord
    belongs_to :folder 
    belongs_to :picture 

end
