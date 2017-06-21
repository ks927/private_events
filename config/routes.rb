Rails.application.routes.draw do
    

  get 'attendances/create'

  root 'index#home'

  get '/signup',    to: 'users#new'
  post '/signup',   to: 'users#create'
  delete 'signout', to: 'users#delete'

  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :index, :show]
  resources :attendances, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
