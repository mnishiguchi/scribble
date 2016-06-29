Rails.application.routes.draw do
  devise_for :users
  get '/home'  => 'static_pages#home'
  get '/about' => 'static_pages#about'

  resources :comments, only: [:edit, :update, :destroy]

  resources :posts do
    resources :comments, only: [:new, :create]
  end

  root 'static_pages#home'
end
