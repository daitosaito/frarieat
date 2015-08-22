Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :place_images, only: [:index, :create]
  resources :places, only: [:index, :show, :create]
  resources :dishes, only: [:index, :create]
  resources :dish_images, only: [:index, :create]
end
