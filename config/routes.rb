Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :users

  resources :messages, except: [:destroy, :edit, :update]

  resources :users do
    resources :contacts, except: [:show]
  end
end
