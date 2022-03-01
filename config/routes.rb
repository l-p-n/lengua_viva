Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: :show
  resources :videos, only: :show

  resources :resources, only: [:show, :index, :new, :create] do
    resources :likes, only: [:create, :destroy]
    resources :bookmarks, only: [:create, :destroy]
    resources :views, only: :create
    resources :reviews, only: [:create, :destroy, :show]
    resources :comments, only: [:create, :destroy]
  end

end
