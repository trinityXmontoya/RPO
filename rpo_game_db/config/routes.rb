RpoGameDb::Application.routes.draw do


get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'

get '/welcome', to: 'main#welcome'

resources :characters, only: :index, shallow:true do
  resources :levels, only: [:index, :show]
end


root to: 'users#index'

resources :users

end
