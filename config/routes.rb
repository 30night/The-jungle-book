Rails.application.routes.draw do
  devise_for :users

  resources :animals

  root to: 'animals#index'
end
