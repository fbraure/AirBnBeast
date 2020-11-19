Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  # get "offers/search", to: "offers#search"

  resources :offers, only:[ :index ]


  resources :offers, except: [ :index ] do
    collection do
      get "/mine", to: "offers#mine"
    end
    member do
      patch "/unbook", to: "offers#unbook"
    end
    resources :reviews, only: [ :new, :create ]
    resources :bookings, only: :create
  end
  resources :reviews, only: [ :destroy ]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
