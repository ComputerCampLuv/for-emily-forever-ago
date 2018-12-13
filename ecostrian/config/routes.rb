Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :days do
    resources :lines
  end

  root 'days#index'
end
