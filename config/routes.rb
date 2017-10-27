Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :parking_spots, only: [:index, :show]

      post '/newparkingspot', to: 'parking_spots#create'
      post '/users', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/users/me', to: 'users#me'
      get '/reservations', to: 'reservations#index'
      post '/newreservation', to: 'reservations#create'
      post '/filterbyzip', to: 'parking_spots#filter_by_zip'
      get '/trips', to: 'reservations#trips'
      patch '/parkingspotupdate', to: 'parking_spots#update'
      patch '/reservationupdate', to: 'reservations#update'
      patch '/userupdate', to: 'users#update'


    end
  end
end
