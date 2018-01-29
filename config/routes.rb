Rails.application.routes.draw do

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
root 'bags#new'

resources :clubs
resources :bags
resources :courses


get '/auth/facebook/callback' => 'sessions#create'


end