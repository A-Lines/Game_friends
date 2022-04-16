Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'search' => 'searches#serach'
  get 'users/:id/edit_profile' => 'users#edit_profile'
  get 'rooms/request' => 'rooms#request'

  resources :users, :only => [:show,:edit,:update ] do
    # showページが不要、idの受け渡しもないのでresourceと記述
    resource :relationships, :only => [:create,:destroy]
    get :followings, on: :member # on: :memberでルーティングにidを含めることができる
    get :followers, on: :member
  end

  resources :dm_messages, :only => [:show,:create]
  
  resources :rooms do
  resource :room_talk_spaces, :only => [:show,:create,:destroy]
  resources :room_messages, :only => [:create]
  resources :room_repuests, :only => [:create,:destroy]
  resources :room_members, :only => [:create,:destroy]
  end
  
  resources :games, :only => [:new,:create]
end