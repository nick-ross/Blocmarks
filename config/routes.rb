Blocmarks::Application.routes.draw do
  get "sessions/new"

  get "welcome/index"

  get "welcome/about"

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :users
  resources :sessions

  root to: 'welcome#index'
  post :incoming, to: 'incoming#create'

end