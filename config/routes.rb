Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

  get '/orders' => 'orders#index'
  get '/orders/:id' => 'orders#show'
  post '/orders' => 'orders#create'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'

  patch '/promote' => 'users#promote'
end
