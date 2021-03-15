Rails.application.routes.draw do
  # resources :items
  # resources :rooms
  # resources :users 
  # resources :sessions
  post '/rooms/new', to: 'rooms#create'
  get '/rooms', to: 'rooms#index'
  patch '/rooms/:id/update', to: 'rooms#update'
  delete '/rooms/:id/delete', to: 'rooms#destroy'
  get '/:id/rooms', to: 'rooms#index'
  get '/items/:id/index', to: 'items#index'
  post '/items/new', to: 'items#create'
  post '/users/new', to: 'users#create'
  post '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
