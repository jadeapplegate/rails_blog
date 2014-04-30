Blog::Application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  root "posts#index"

  resources :posts
  resources :sessions
  resources :comments
  resources :users
end

#          Prefix Verb   URI Pattern                  Controller#Action
#     sessions_new GET    /sessions/new(.:format)      sessions#new
#  sessions_create GET    /sessions/create(.:format)   sessions#create
# sessions_destroy GET    /sessions/destroy(.:format)  sessions#destroy
#             root GET    /                            posts#index
#            posts GET    /posts(.:format)             posts#index
#                  POST   /posts(.:format)             posts#create
#         new_post GET    /posts/new(.:format)         posts#new
#        edit_post GET    /posts/:id/edit(.:format)    posts#edit
#             post GET    /posts/:id(.:format)         posts#show
#                  PATCH  /posts/:id(.:format)         posts#update
#                  PUT    /posts/:id(.:format)         posts#update
#                  DELETE /posts/:id(.:format)         posts#destroy
#         sessions GET    /sessions(.:format)          sessions#index
#                  POST   /sessions(.:format)          sessions#create
#      new_session GET    /sessions/new(.:format)      sessions#new
#     edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#          session GET    /sessions/:id(.:format)      sessions#show
#                  PATCH  /sessions/:id(.:format)      sessions#update
#                  PUT    /sessions/:id(.:format)      sessions#update
#                  DELETE /sessions/:id(.:format)      sessions#destroy
#         comments GET    /comments(.:format)          comments#index
#                  POST   /comments(.:format)          comments#create
#      new_comment GET    /comments/new(.:format)      comments#new
#     edit_comment GET    /comments/:id/edit(.:format) comments#edit
#          comment GET    /comments/:id(.:format)      comments#show
#                  PATCH  /comments/:id(.:format)      comments#update
#                  PUT    /comments/:id(.:format)      comments#update
#                  DELETE /comments/:id(.:format)      comments#destroy
#            users GET    /users(.:format)             users#index
#                  POST   /users(.:format)             users#create
#         new_user GET    /users/new(.:format)         users#new
#        edit_user GET    /users/:id/edit(.:format)    users#edit
#             user GET    /users/:id(.:format)         users#show
#                  PATCH  /users/:id(.:format)         users#update
#                  PUT    /users/:id(.:format)         users#update
#                  DELETE /users/:id(.:format)         users#destroy