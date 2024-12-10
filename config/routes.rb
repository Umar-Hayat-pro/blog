Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: "pages#home"
  get "about", to: "pages#about"


  get "up" => "rails/health#show", as: :rails_health_check
end
