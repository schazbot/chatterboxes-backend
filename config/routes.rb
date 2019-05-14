Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :folders
      resources :users, only: [:index]
      resources :folder_pictures, only: [:create, :destroy]

      get '/pictures/search', to: 'pictures#get_pictures_from_api'
    end
  end
end
