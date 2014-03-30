RpoGameDb::Application.routes.draw do


get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'

get '/welcome', to: 'main#welcome'

resources :characters, only: :index, shallow:true do
  resources :levels, only: [:index, :show], shallow:true do
    resources :games, only: :show
  end
end

get '/levels/:id/begin', to: 'levels#begin'
get '/levels/:id/game/:game_id', to: 'levels#game'

root to: 'users#index'

resources :users

end
