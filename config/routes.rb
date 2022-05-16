Rails.application.routes.draw do
  devise_for :users
  resources :nutta
  root 'home#index'
  get 'home/about'
end
