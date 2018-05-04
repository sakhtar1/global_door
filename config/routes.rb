Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/users' => 'users#index'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/:id' =>'users#show'

  root 'statics#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
