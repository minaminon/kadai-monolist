Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  
  get 'signup', to: 'users#new'
  
  get 'ranking/want', to: 'ranking#want'
  get 'ranking/have', to: 'ranking#have'
  
  resources :users,only: [:show,:new,:create]
  
  resources :items,only: [:show,:new]
  
  resources :ownerships, only: [:create,:destroy]
  
  
end
