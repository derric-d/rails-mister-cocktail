Rails.application.routes.draw do

  # get 'doses/new'
  # get 'doses/create'
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index new create show] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: [:destroy]
  resources :cocktails, only: [:destroy]
end
