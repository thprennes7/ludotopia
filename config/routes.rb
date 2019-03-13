Rails.application.routes.draw do

  resources :contacts
  root to: 'home#index'



  resources :charges
  resources :banners
  resources :donations
  resources :scores
  resources :likes
  resources :comments
  resources :games
  resources :articles
  devise_for :users
  resources :statuses

# Admin dashboard
  namespace :admin do
    resources :banners
    resources :donations
    resources :scores
    resources :games
    resources :articles
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  # TicTacToe
  namespace :tictactoe do
    resources :tictactoe_grids
    resources :tictactoe_users
    resources :tictactoes do
      get 'get_status'
    end
  end
end
