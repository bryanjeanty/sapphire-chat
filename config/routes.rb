Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :chatrooms, only: [:index, :create, :show, :update, :destroy] do
    resources :messages, only: [:create]
    resources :editors, only: [:create]
  end

  # Social routes
  post '/followers/:follower_id/following/:following_id' => 'relationships#create', as: 'follower_following_relationship'
  destroy '/followers/:follower_id/following/:following_id' => 'relationships#destroy'
end
