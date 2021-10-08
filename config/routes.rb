Rails.application.routes.draw do
  get 'app/index'
  resources :imagens
  resources :routes
  resources :green_houses
  resources :devices
  resources :agricultural_companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
