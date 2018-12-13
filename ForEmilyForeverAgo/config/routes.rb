Rails.application.routes.draw do
  get 'products/index'
  get 'line_items/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'orders#index'
  resources :orders, :products
  resources :line_items
end
