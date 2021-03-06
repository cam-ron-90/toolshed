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
  get 'about', to: 'pages#about'
  get 'welcome', to: 'pages#logged_in'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'category/:category', to: 'tools#category', as: :category
  get 'my_tool/:tool', to: 'bookings#my_tool', as: :my_tool
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings
end
