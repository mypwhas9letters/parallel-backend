Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :parking_spots, only: [:index, :create, :show]

      post '/users', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/users/me', to: 'users#me'
      post '/reservations', to: 'reservations#index'
      post '/newreservation', to: 'reservations#create'
    end
  end
end
