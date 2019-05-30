Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :folders, only: [:show, :create, :index, :update, :destroy]
      resources :users, only: [:index, :show]
      resources :folder_pictures, only: [:index, :create, :destroy]
      resources :pictures, only: [:index, :create, :update, :destroy]

      get '/pictures/search', to: 'pictures#get_pictures_from_api'
      post '/pictures/create', to: 'pictures#create'


      get 'folder_pictures', to: 'folder_pictures#index'
      post 'folder_pictures/create', to: 'folder_pictures#create'

    end
  end
end
