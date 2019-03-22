Rails.application.routes.draw do

  root to: 'home#index'

  # Theme switching route !!not a page!!
  get 'theme', to: 'home#index'

  resources :supports, only: [:new, :create]
  resources :contacts, only: [:create, :index, :destroy]
  resources :landings, only: [:show]
  resources :banners do
    resources :banner_images
  end
  resources :donations, except: [:edit, :index, :show]
  resources :scores, except: [:edit]
  resources :games, except: [:edit] do
    resources :images
  end

  resources :articles do
    resources :images
    resources :comments, only: [:create, :edit, :new]
    resources :likes, only: [:create, :edit, :new, :destroy]
  end
  devise_for :users, except: [:index]

  # Admin dashboard

  resources :admins, only: [:index]
  namespace :admin do
    resources :supports, except: [:new, :create, :update, :edit]
    resources :banners
    resources :donations, only: [:edit, :index, :show]
    resources :scores, only: [:edit, :index]
    resources :games
    resources :articles do
      resources :comments
    end
    resources :users, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # TicTacToe
  namespace :tictactoe do
    resources :tictactoe_grids, only: [:update]
    resources :tictactoe_users, only: [:create, :destroy]
    resources :tictactoes, only: [:show, :create, :update] do
      get 'get_status'
      get 'get_grid'
    end
  end
end
