Rails.application.routes.draw do
  get 'select_profile' => 'select_profile#index'

  get 'select_profile/activate/:id' => 'select_profile#activate'

  get 'play' => 'play#index'
  post 'play' => 'play#index'

  get 'play/update'

  resources :handlers

  resources :hooks

  resources :extra_choices

  resources :mods

  resources :incarnations

  resources :profiles

  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
