Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/my_account', to: 'my_account#show', as: 'my_account'
  get '/my_classroom', to: 'my_classroom#show', as: 'my_classroom'
  get '/resources/search_results', to: 'resources#search_tagged'

  resources :users, only: [:show, :edit, :update]
  resources :videos, only: :show
  resources :songs, only: :show
  resources :podcasts, only: :show
  resources :articles, only: :show

  resources :resources, only: [:index, :new, :create] do
    resources :likes, only: [:create]
    resources :bookmarks, only: [:create]
    resources :views, only: [:create]
    resources :reviews, only: [:create]
    resources :comments, only: [:create]
  end

  resources :likes, only: :destroy
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
  resources :comments, only: :destroy

end
