Rails.application.routes.draw do
  resources :attractions
  resources :itineraries
  resources :destinations
  resources :users

  post '/signup', to: 'users#create'
  post "/login", to: "sessions#create"
  get "/user", to: "users#show"
  # patch "/users", to: "users#update"

  get "/users_count", to: "users#count"
  get "/destinations_count", to: "attractions#count"
  delete "/logout", to: "sessions#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
