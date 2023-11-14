Rails.application.routes.draw do
  resources :stands
  resources :skills
  get "characters", to: "characters#index"
  get "characters/:id/show", to: "characters#show", as: "show_character"
  delete "characters/:id/destroy", to: "characters#destroy", as: "destroy_character"
  get "characters/new", to: "characters#new", as: "new_character"
  post "characters/create", to: "characters#create", as: "create_character"
  get "characters/:id/edit", to: "characters#edit", as: "edit_character"
  post "characters/:id/update", to: "characters#update", as: "update_character"

  # Defines the root path route ("/")
  root "characters#index"
end
