Rails.application.routes.draw do
  devise_for :users
  root to: 'children#index'
  resources :children do
    resources :breasts, only: [:new, :create, :edit, :update]
  end
end
