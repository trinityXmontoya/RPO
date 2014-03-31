RpoGameDb::Application.routes.draw do


get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'

get '/welcome', to: 'main#welcome'

resources :users

resources :characters, only: :index, shallow:true do
  resources :levels, only: [:index, :show], shallow:true do
    resources :games, only: :show
  end
end

get '/levels/:id/:choice', to: 'levels#begin'

root to: 'users#index'



end
