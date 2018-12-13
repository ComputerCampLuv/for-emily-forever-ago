Rails.application.routes.draw do
  
  devise_for :users
  root 'orders#index'

  resources :orders do
    resources :lines
  end
  
  resources :items
  
end
