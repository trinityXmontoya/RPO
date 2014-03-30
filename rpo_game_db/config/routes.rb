RpoGameDb::Application.routes.draw do


get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'

root to: 'users#index'

resources :users

end
