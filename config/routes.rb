Rails.application.routes.draw do
  devise_for :users

  get '/home'  => 'static_pages#home'
  get '/about' => 'static_pages#about'

  resources :posts, only: [:show, :create]
  resources :comments, only: [:edit, :update, :destroy]

  resources :posts do
    resources :comments, only: [:new, :create]
  end

  # Each post to be links to the ‘index’ method
  get 'tags/:tag', to: 'posts#index', as: "tag"

  root 'static_pages#home'
end
