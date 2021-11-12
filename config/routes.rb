Rails.application.routes.draw do
  resources :paths
  namespace :api, defaults: {format: 'json'} do
    resources :agricultural_companies
    resources :imagens, only: [:index, :create, :destroy, :update, :show]
    resources :routes, only: [:index, :create, :destroy, :update, :show]
    resources :green_houses, only: [:index, :create, :destroy, :update, :show]
    resources :devices, only: [:index, :create, :destroy, :update, :show]
  end
  
  devise_for :users
  root to: "devices#index"
  resources :app
  resources :routes
  resources :green_houses
  resources :devices
  resources :agricultural_companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search', to: "devices#search" 
  get '/change', to: "routes#change"
  get '/redirect/', to: "devices#redirect"
  get '/devices/:id/routes', to: 'devices#routes'
  get '/devices/:id/routes/:route_ind', to: 'devices#route_ind', as: 'device_route_ind'
  get '/devices/:id/routedate/:date/:route_ind', to: 'devices#searchdate', as: "device_searchdate"
  post '/device/routedates', to: "devices#routedates", as: "device_routesdate"
  end
