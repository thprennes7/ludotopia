Rails.application.routes.draw do

  root to: 'home#index'

  resources :supports, only: [:new, :create]
  resources :contacts
  resources :landings, only: [:show]
  resources :charges
  resources :banners do
    resources :banner_images
  end
  resources :donations, except: [:edit, :index, :show]
  resources :scores, except: [:edit]
  resources :likes, only: [:create, :edit, :new]
  resources :games, except: [:edit] do
    resources :images
  end

  resources :articles do
    resources :images
    resources :comments, only: [:create, :edit, :new]
  end
  devise_for :users, except: [:index]

  # Admin dashboard

  resources :admins, only: [:index]
  namespace :admin do
    resources :supports, except: [:new, :create, :update, :edit]
    resources :banners
    resources :donations, only: [:edit, :index, :show]

    resources :scores, only: [:edit]
    resources :games
    resources :articles do
      resources :comments
    end
    resources :users, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # TicTacToe
  namespace :tictactoe do
    resources :tictactoe_grids
    resources :tictactoe_users
    resources :tictactoes do
      get 'get_status'
      get 'get_grid'
    end
  end
end
