Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: 'homes#top'
  get 'search' => 'searches#serach'
  get 'users/:id/edit_profile' => 'users#edit_profile', as: 'edit_profile'
  get 'rooms/request' => 'rooms#request'
  get 'users/profile' => 'users#profile', as: 'profile'

  resources :users, :only => [:show,:edit,:update ] do
    # showページが不要、idの受け渡しもないのでresourceと記述change
    resource :relationships, :only => [:create,:destroy]
    get :followings, on: :member # on: :memberでルーティングにidを含めることができる
    get :followers, on: :member
  end

  resources :dm_messages, :only => [:show,:create]
  resources :room_messages, :only => [:show,:create]
  resources :rooms
  resources :games, :only => [:new,:create]
end
