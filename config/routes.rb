Rails.application.routes.draw do
  root 'orders#index'
  resources :orders
  resources :track_orders
end
