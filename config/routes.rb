Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"

  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:create, :index, :show, :edit, :destroy]
end
