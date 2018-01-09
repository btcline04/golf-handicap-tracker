Rails.application.routes.draw do

devise_for :users
root 'bags#index'
resources :clubs
resources :bags

end