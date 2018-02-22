Rails.application.routes.draw do

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
root 'bags#new'

resources :clubs
resources :bags
resources :courses do
  resources :rounds, shallow: true
end


get '/auth/facebook/callback' => 'sessions#create'


end