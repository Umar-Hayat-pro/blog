Rails.application.routes.draw do
  resources :posts
  root "pages#index"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/posts", to: "posts#index"


  get "up" => "rails/health#show", as: :rails_health_check
end
