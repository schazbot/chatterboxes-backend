class Api::V1::PicturesController < ApplicationController
    require 'rest-client'

    def get_pictures_from_api
        response = RestClient.get "https://www.opensymbols.org/api/v1/symbols/search?q=apple"
        
        render json: response
    end


end
