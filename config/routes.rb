Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :products do
    resources :order_items
  end

  resources :order_items

  resources :accounts

  resources :orders do
    resources :order_items
  end

  # resource :cart, only: [:show]
end
