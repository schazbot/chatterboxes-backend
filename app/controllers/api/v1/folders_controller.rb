class Api::V1::FoldersController < ApplicationController

    def index
        folders = Folder.all 
        render json: folders
    end

    def show
        folders = Folder.find(params[:id])
        render json: folders
    end

    def create
        
        folder = Folder.create(name: params[:name],  
        user_id:"1", 
        image_url: params[:image_url] === "" ? "http://cdn.osxdaily.com/wp-content/uploads/2017/10/folder-ios-files-app.jpg" : params[:image_url])

            if folder.valid?
                render json: folder
            else
                render json: {error: folder.errors.full_messages}
            end 
    end

    def update
        folder = Folder.find(params[:id])
        folder.update(folder_params)
        render json: folder
    end

    def update
        folder = Folder.find(params[:id])
        folder.update(folder_params)
        render json: folder
    end

    def destroy
        folder = Folder.find(params[:id]).destroy
        render json: folder
    end


    
    
      private
    
      def folder_params
          params.require(:folder).permit(:name)
      end


end
