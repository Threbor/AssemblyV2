Rails.application.routes.draw do

  root 'home#index'

  devise_for :users

  resources :universes, only: %i[index show]
  resources :storyrooms, only: %i[index show new create] do
    resources :messages, only: %i[create]
    resources :storycards, only: %i[create destroy]
    resources :events, only: %i[create]
  end
  resources :history, only: %i[index show]
end
