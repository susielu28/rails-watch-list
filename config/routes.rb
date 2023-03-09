Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"

  # Movies
  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show', as: 'movie'

  # Movie lists
  get '/lists', to: 'lists#index', as: 'lists'
  get '/lists/new', to: 'lists#new'
  post '/lists', to: 'lists#create'
  get '/lists/:id', to: 'lists#show', as: 'list'

  # Bookmarks
  get '/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
  post '/bookmarks', to: 'bookmarks#create', as: 'create_bookmark'
  delete '/bookmarks/:id', to: 'bookmarks#destroy', as: 'destroy_bookmark'
end
