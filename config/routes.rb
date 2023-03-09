Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Movies
  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show', as: 'movie'

  # Movie lists
  get '/lists', to: 'lists#index'
  get '/lists/new', to: 'lists#new'
  post '/lists', to: 'lists#create'
  get '/lists/:id', to: 'lists#show', as: 'list'

  # Bookmarks
  get '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'new_list_bookmark'
  post '/lists/:id/bookmarks', to: 'bookmarks#create', as: 'create_bookmark'
  post '/bookmarks', to: 'bookmarks#create_to_list', as: 'create_bookmark_to_list'
  delete '/lists/:list_id/bookmarks/:id', to: 'bookmarks#destroy', as: 'destroy_bookmark'
end
