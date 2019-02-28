Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :chatrooms, only: [:index, :create, :show, :update, :destroy] do
    resources :messages, only: [:create]
    resources :editor, only: [:create]
  end
end
