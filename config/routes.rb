Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flights
  # Defines the root path route ("/")
  root "flights#index"
     
end
