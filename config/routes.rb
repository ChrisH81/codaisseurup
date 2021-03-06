
Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users
  resources :photos
  resources :users, only: [:show]
  resources :events do
    resources :registrations, only: [:create]
  end
  resources :profiles, only: [:new, :edit, :create, :update]
end
