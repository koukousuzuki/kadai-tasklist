Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destory'

  root to: 'tasks#index'
  
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destory'
  
  get 'signup', to: 'tasks#new'
  resources :tasks, only: [:index, :show, :new, :create]
end
