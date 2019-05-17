class Api::V1::FoldersController < ApplicationController

    def show
        folders = Folder.find(params[:id])
        render json: folders
    end

    def create
        folder = Folder.create(name: params[:name],  user_id:"1", image_url: params[:image_url])
        render json: folder
    end

end
