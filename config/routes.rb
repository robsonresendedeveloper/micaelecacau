Rails.application.routes.draw do
  resources :confirmations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "confirmations#new"

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
