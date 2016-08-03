Rails.application.routes.draw do
  get 'jobs/new'

	get 'signup', to: 'users#new', as: 'signup'
	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'home/index'

  resources :users
  resources :sessions
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
