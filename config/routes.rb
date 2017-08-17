Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/register', to: 'users#new'

  resources :users, except: [:index]

  get '/login', to: 'sessions#new'


  resources :sessions

  root "homepage#index"

end
