Rails.application.routes.draw do

  get 'courses/new'

  get 'courses/edit'

  get 'courses/index'

  get 'courses/show'

  get 'course/new'

  get 'course/edit'

  get 'course/index'

  get 'course/show'

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
root 'bags#new'

resources :clubs
resources :bags
resources :courses


get '/auth/facebook/callback' => 'sessions#create'


end