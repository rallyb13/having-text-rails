Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  resources :users do
    resources :messages, except: [:destroy, :edit, :update]
  end
end
