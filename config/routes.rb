Rails.application.routes.draw do
  resources :passengers
  resources :bookings
  resources :flights
  resources :airports
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flights#index"
end
