Rails.application.routes.draw do

root 'bags#index'
get '/bags/bag_data', to: 'bags#bag_data'

resources :clubs
resources :bags
resources :courses do
  resources :rounds
end
get '/recent', to: 'rounds#recent'

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
get '/auth/facebook/callback' => 'sessions#create'


end