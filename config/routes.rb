Rails.application.routes.draw do

  resources :songs do
  	member do
  		post 'add'
  	end
  end
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }


  get 'user_songs/index/:user_id', to: "user_songs#index", as: "user_songs_index"
  post 'user_songs/index/:user_id', to: "user_songs#index"
  get 'user_songs/favoritos', to: "user_songs#favoritos", as: "user_songs_favoritos"
  root 'songs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
