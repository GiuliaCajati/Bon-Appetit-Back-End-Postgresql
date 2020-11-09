Rails.application.routes.draw do
  resources :users
  resources :ingredients
  resources :meals
  resources :meal_ingredients



  post "/users", to: "users#create", as: "sign_up"
  post "/login", to: "users#show"
  
  # get "/logout", to: "users#logout", as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
