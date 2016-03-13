Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :positions
  resources :sessions
  root "users#index"
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  resources :users
  resources :benders
  resources :drinks
	
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
