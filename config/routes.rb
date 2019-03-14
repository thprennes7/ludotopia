Rails.application.routes.draw do

  resources :contacts
  root to: 'home#index'


  resources :landings
  resources :charges
  resources :banners do
    resources :banner_images
  end
  resources :donations, except: [:edit, :index, :show]
  resources :scores, except: [:edit]
  resources :likes
  resources :comments
  resources :games, except: [:edit]
  resources :articles do
    resources :images
  end
  devise_for :users, except: [:index]

  # Admin dashboard
  namespace :admin do
    resources :banners
    resources :donations, only: [:edit, :index, :show]
    resources :scores, only: [:edit]
    resources :games, only: [:edit]
    resources :articles
    resources :users, only: [:index]
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
