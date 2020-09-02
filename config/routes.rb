Rails.application.routes.draw do
  devise_for :users
  root to: 'children#index'
  resources :children
end
