Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  
  resources :users
  #resources :continents, only: [:show] do
    # nested resource for posts
   # resources :countries, only: [:show, :index]
  #end

  resources :countries

  resources :visits, only: [:show]


  get '/home' => 'statics#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
