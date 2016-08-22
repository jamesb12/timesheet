Rails.application.routes.draw do
  

  resources :tests
	get 'signup', to: 'users#new', as: 'signup'
	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'

	get "jobs/submit_customer"

 get 'home/index'
resources :jobs
  resources :users
  resources :sessions
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
