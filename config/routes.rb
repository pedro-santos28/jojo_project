Rails.application.routes.draw do
  resources :stands
  resources :skills
  get "characters", to: "characters#index"
  get "characters/:id/show", to: "characters#show", as: "show_character"
  get "characters/new", to: "characters#new", as: "new_character"
  post "characters/create", to: "characters#create", as: "create_character"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "characters#index"
end
