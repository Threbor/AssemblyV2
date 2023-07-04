Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :universes, only: %i[index show]
  resources :storyrooms, only: %i[index show new create edit update destroy] do
    resources :storyroom_characters, only: %i[new create edit update destroy]
    resources :messages, only: %i[create edit update]
    resources :storycards, only: %i[create destroy]
    resources :events, only: %i[create]
  end
  resources :history, only: %i[index show]
end
