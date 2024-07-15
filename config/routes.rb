Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:create, :index, :show, :edit]
  devise_for :users
  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
end
