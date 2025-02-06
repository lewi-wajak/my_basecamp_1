Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :projects

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    post 'users/:id/promote', to: 'dashboard#promote', as: 'promote_user'
    post 'users/:id/demote', to: 'dashboard#demote', as: 'demote_user'
  end
  
  
  get "up", to: "rails/health#show", as: :rails_health_check
end
