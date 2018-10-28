Rails.application.routes.draw do
  
  resources :friends
  post 'friends/new' => 'friends#create'
  # resources :friends, :only => [:index]
  # devise_for :users
  

  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
   }
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome, :only => [:index]
  root "welcome#index"
  # resources :users, :only => [:show, :index, :edit, :update]
  resources :users, :only => [:show, :index]
end
