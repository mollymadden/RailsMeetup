Rails.application.routes.draw do

  root 'meetups#index'

  resources :meetups
    resources :users
    resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
