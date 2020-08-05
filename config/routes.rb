Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => "users/registrations"
  }
  
  root 'home#top'
  get 'home/about'
  get '/search' => 'search#search'
  get 'chats/show'
  
  resources :users,only: [:show,:index,:edit,:update] do
    member do
      get :following, :followers
    end
  end

  resources :books do
    resource :favorites,only: [:create, :destroy]
    resources :book_comments,only: [:create, :destroy]
  end

  resources :relationships, only: [:create, :destroy]

  resources :chats, only: [:create]
  resources :rooms, only: [:create,:show]

end