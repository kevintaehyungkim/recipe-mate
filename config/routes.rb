Rails.application.routes.draw do
  get 'recipes/show'
  # get 'users/show'
  # get 'home/index'
  devise_for :users
  resources :users, only: [:show]
  # resources :users, :controllers => "users"
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
