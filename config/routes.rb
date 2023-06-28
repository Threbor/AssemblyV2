Rails.application.routes.draw do

  root 'home#index'

  devise_for :users

  resources :universes, only: %i[index show]
  resources :storyrooms, only: %i[index show]
  resources :history, only: %i[index show]
end
