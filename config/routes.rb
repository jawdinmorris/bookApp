Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#index'
  resources :authors
  resources :books
  resources :users
  resources :favourite_book_users
  resources :stores
end
