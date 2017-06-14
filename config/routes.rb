Rails.application.routes.draw do
    
  get '/signin', to: 'users#new'

  post '/signin', to: 'users#create'

  get  '/user',   to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
