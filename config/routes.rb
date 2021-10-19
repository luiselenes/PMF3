Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    resources :agricultural_companies
    resources :imagens, only: [:index, :create, :destroy, :update, :show]
    resources :routes, only: [:index, :create, :destroy, :update, :show]
    resources :green_houses, only: [:index, :create, :destroy, :update, :show]
    resources :devices, only: [:index, :create, :destroy, :update, :show]
  end
  
  devise_for :users
  root to: "routes#index"
  resources :app
  resources :imagens
  resources :routes
  resources :green_houses
  resources :devices
  resources :agricultural_companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
