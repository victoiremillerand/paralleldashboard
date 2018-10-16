Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dossiers', to: 'dossiers#index', as: 'user_root'

  resources :dossiers, only: [:index, :new, :create, :show, :update, :edit, :destroy] do
    resources :tasks, only: [:index, :new, :create, :show, :update, :edit, :destroy]
    end
  resources :clients, only: [:index, :new, :create, :show, :update, :edit]
end
