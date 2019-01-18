Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :itineraries, only: [:create, :show, :index]
      resources :places, only: [:show, :index]
      resources :itinerary_places, only: [:show, :index, :create]
    end
  end

end
