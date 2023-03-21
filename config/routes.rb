Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "articles#index"

  #get metoder via articles controlleren:
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"

  #resources metoden, laver alle CRUD funktionaliter. Når en model/entitet har alle CRUD funktioner
  # kaldes det en "resource" i Rails terminologi
  resources :articles do
    #dette indikerer et nested relationship
    resources :comments
  end

  #resources mapper følgende routes:
  #ruby bin/rails routes

  #            Prefix Verb   URI Pattern                                                                                       Controller#Action
#                                     root GET    /                                                                             articles#index
#                                 articles GET    /articles(.:format)                                                           articles#index
#                                          POST   /articles(.:format)                                                           articles#create
#                              new_article GET    /articles/new(.:format)                                                       articles#new
#                             edit_article GET    /articles/:id/edit(.:format)                                                  articles#edit
#                                  article GET    /articles/:id(.:format)                                                       articles#show
#                                          PATCH  /articles/:id(.:format)                                                       articles#update
#                                          PUT    /articles/:id(.:format)                                                       articles#update
#                                          DELETE /articles/:id(.:format)                                                       articles#destroy


  #           Prefix Verb   URI Pattern                                                                                       Controller#Action
  #                                     root GET    /                                                                                                 articles#index
  #                         article_comments GET    /articles/:article_id/comments(.:format)                                                          comments#index
  #                                          POST   /articles/:article_id/comments(.:format)                                                          comments#create
  #                      new_article_comment GET    /articles/:article_id/comments/new(.:format)                                                      comments#new
  #                     edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format)                                                 comments#edit
  #                          article_comment GET    /articles/:article_id/comments/:id(.:format)                                                      comments#show
  #                                          PATCH  /articles/:article_id/comments/:id(.:format)                                                      comments#update
  #                                          PUT    /articles/:article_id/comments/:id(.:format)                                                      comments#update
  #                                          DELETE /articles/:article_id/comments/:id(.:format)                                                      comments#destroy

  # Defines the root path route ("/")
  # root "articles#index"
end
