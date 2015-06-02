Rails.application.routes.draw do

  get '/users', to: 'users#index'
  get '/users/create', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/users/:id/delete', to: 'users#delete'

end
