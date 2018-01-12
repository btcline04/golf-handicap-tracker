Rails.application.routes.draw do

devise_for :users
root 'bags#new'

resources :clubs
resources :bags

end