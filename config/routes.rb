3Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :spots

  get '/dashboard', to: "pages#dashboard"

  resources :bookings, only: [:index, :show, :destroy, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
