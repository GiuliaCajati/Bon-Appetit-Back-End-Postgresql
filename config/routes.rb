Rails.application.routes.draw do
  resources :users
  resources :ingredients
  resources :meals
  resources :meal_ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
