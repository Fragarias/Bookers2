Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  get "home/about" => 'homes#about', as: 'about'
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  # get 'homes/top'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
end
