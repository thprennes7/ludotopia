Rails.application.routes.draw do
  resources :tictactoe_grids
  resources :tictactoe_users
  resources :tictactoes
  resources :banners
  resources :donations
  resources :scores
  resources :likes
  resources :comments
  resources :games
  resources :articles
  devise_for :users
  resources :statuses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
