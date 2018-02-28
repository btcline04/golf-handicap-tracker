Rails.application.routes.draw do

root 'bags#index'

resources :clubs
resources :bags
resources :courses do
  resources :rounds
end

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
get '/auth/facebook/callback' => 'sessions#create'


end