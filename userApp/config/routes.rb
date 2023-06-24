Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get   '/users', to: 'user#index', as: 'users_path'

get   '/users/new', to: 'user#new'
post  '/users', to: 'user#create'

get '/users/:id', to: 'user#destroy'
end
