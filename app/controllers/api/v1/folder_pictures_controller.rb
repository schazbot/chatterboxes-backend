class Api::V1::FolderPicturesController < ApplicationController

    def index
        folder_pictures = FolderPicture.all 
        render json: folder_pictures
    end

    def create
        pic_id =Picture.last.id
        folder_picture = FolderPicture.create(folder_id: params[:folder_id], picture_id: pic_id)
        render json: folder_picture
    end


end
