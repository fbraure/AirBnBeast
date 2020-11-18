Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :offers, only:[ :index, :search ]

  resources :offers do
    collection do
      get "/mine", to: "offers#mine"
    end
    resources :reviews, only: [ :new, :create ]
    resources :bookings, only: :create
  end
  resources :reviews, only: [ :destroy ]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
