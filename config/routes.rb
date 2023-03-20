Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "articles#index"

  #get metoder via articles controlleren:
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"

  #resources metoden, laver alle CRUD funktionaliter. Når en model/entitet har alle CRUD funktioner
  # kaldes det en "resource" i Rails terminologi
  resources :articles

  # Defines the root path route ("/")
  # root "articles#index"
end
