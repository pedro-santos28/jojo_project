Rails.application.routes.draw do
  resources :habilities
  get "characters", to: "characters#index"
  get "characters/new", to: "characters#new", as: "new_character"
  post "characters/create", to: "characters#create", as: "create_character"

  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
