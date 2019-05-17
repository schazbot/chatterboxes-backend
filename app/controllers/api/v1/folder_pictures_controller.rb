class Api::V1::FolderPicturesController < ApplicationController

    def create
        folder_picture = FolderPicture.create(folder_id: params[:folder_id], picture_id: params[:picture_id])
        render json: folder_picture
    end


end
