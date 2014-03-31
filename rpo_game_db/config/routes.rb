RpoGameDb::Application.routes.draw do


get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'

get '/welcome', to: 'main#welcome'

resources :users

get 'levels/:id/end', to: 'levels#end', :as=>:level_end
get 'levels/:id/:choice', to: 'levels#begin', :as=>:level_begin

resources :characters, only: :index, shallow:true do
  resources :levels, only: [:index, :show], :shallow => false do
    resources :games, only: :show
  end
end

root to: 'users#index'

end

# ,:path_prefix => 'levels/:id'
