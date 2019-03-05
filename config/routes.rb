Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  root to: 'articles#index'
  resources :subscriptions, only: [:new, :create]
  resources :articles, only: [:index, :show]
end
