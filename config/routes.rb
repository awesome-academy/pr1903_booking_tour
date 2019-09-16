Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  post '/signup', to: 'users#create'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users
  resources :tours
  resources :addresses
  resources :booking_requests
  resources :ratings
  resources :comments
  resources :categories
  resources :likes
  resources :activities
end
