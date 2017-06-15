Rails.application.routes.draw do
    

  root 'index#home'

  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
