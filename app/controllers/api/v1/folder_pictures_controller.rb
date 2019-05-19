class Api::V1::FolderPicturesController < ApplicationController

    def index
        folder_pictures = FolderPicture.all 
        render json: folder_pictures
    end

    def create
        folder_picture = FolderPicture.create(folder_id: params[:folder_id], picture_id: params[:picture_id])
        render json: folder_picture
    end


end
