Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  get "homes/about", as: 'about'
  resources :books, only: [:index, :show, :edit]
  resources :users, only: [:index, :show, :edit]
  # get 'homes/top'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
end
