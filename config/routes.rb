Rails.application.routes.draw do

root to: 'bags#index'
get '/bags/bag_data', to: 'bags#bag_data'
get 'clubs/:id/club_info', to: 'clubs#club_info'
get 'clubs/:id/next', to: 'clubs#next'

devise_scope :user do
  get '/users/sign_out', to: 'devise/sessions#destroy'
end


resources :clubs
resources :bags
resources :courses do
  resources :rounds
end

get '/recent', to: 'rounds#recent'

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
get '/auth/facebook/callback' => 'sessions#create'


end