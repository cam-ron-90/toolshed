Rails.application.routes.draw do
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/edit'
  # get 'bookings/update'
  # get 'bookings/destroy'

  devise_for :users
  root to: 'pages#home'
  get 'welcome', to: 'pages#logged_in'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools
  resources :bookings
end
