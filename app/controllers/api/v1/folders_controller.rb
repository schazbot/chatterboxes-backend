class Api::V1::FoldersController < ApplicationController

    def show
        folders = Folder.find(params[:id])
        render json: folders
    end

end
