class Api::V1::PicturesController < ApplicationController
    require 'rest-client'

    def get_pictures_from_api
        response = RestClient.get "https://www.opensymbols.org/api/v1/symbols/search?q=apple"
        render json: response
    end
    
    def index
        pictures = Picture.all 
        render json: pictures
    end
    
    def create
        pic = Picture.create(text:params[:text], url:params[:url])

        FolderPicture.create(folder_id: params[:folder_id], picture_id: pic.id)
        render json: pic
    end

    def update
        picture = Picture.find(params[:id])
        picture.update(picture_params)
        render json: picture
    end

    def destroy
        picture = Picture.find(params[:id]).destroy
        render json: picture
    end


    
    
      private
    
      def picture_params
          params.require(:picture).permit(:text, :url)
      end



end
