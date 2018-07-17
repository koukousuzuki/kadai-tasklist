Rails.application.routes.draw do

  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destory'
  
  get 'signup', to: 'tasks#new'
  
  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
  
end
