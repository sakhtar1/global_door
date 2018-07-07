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

  get '/continents/new' => 'continents#new'
  get '/continents' => 'continents#index'
  get '/continents/north_america' => 'continents#north_america'
  get '/continents/south_america' => 'continents#south_america'
  get '/continents/asia' => 'continents#asia'
  get '/continents/europe' => 'continents#europe'
  get '/continents/africa' => 'continents#africa'
  get '/continents/antartica' => 'continents#antartica'
  get '/continents/australia' => 'continents#australia'


  get '/home' => 'statics#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
