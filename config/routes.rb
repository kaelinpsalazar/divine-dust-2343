Rails.application.routes.draw do
  get 'airlines/show'
  get 'flights/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flights, only: [:index]
  resources :airlines, only: [:show]

  # Defines the root path route ("/")
  # root "articles#index"
end
