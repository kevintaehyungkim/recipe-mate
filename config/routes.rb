Rails.application.routes.draw do
  # get 'recipes/show'
  # get 'users/show'
  # get 'home/index'
  devise_for :users
  resources :recipes
  resources :users, only: [:show]
  # resources :users, :controllers => "users"
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'recipes/search' => 'recipes#search', as: "search_recipes"
  post 'recipes/create' => 'recipes#create', as: "create_recipes"
# match "recipes/create", to: "recipes#create", via: "post"
  # post 'recipes/new' => 'recipes#create'
end
