Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do 
  	resources :access, only: [:index, :show, :update]
  	resources :settings, only: [:index, :show, :update]
  	resources :preferences
  end




end
