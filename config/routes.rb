Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :chatrooms, only: [:index, :create, :show, :update, :destroy]
end