Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :spots do
    resources :bookings, only: [:create, :update]
  end

  get '/dashboard', to: "dashboard#index"

  resources :bookings, only: [:destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
