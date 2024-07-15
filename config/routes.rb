Rails.application.routes.draw do
   resources :books, only: [:edit, :index, :show]
  devise_for :users
  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
end
