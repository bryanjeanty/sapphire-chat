Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :chatrooms, only: [:index, :create, :show, :update, :destroy] do
    resources :messages, only: [:create]
    resources :editors, only: [:create]
  end

  # Social routes
  post '/followers/:follower_id/followeds/:followed_id' => 'relationships#create', as: 'follower_following_relationship'
  delete '/followers/:follower_id/followeds/:followed_id' => 'relationships#destroy'

  # User profile page
  devise_scope :user do
    get "/users/:id" => 'registrations#show', as: 'user'
  end
end
