WaitingRoom::Application.routes.draw do
  root 'site#welcome'

  get 'signup', to: 'docs#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :docs
  resources :doctors
  resources :users
  resources :sessions
  resources :questions
  resources :answers

  get "/welcome" => 'site#welcome'

end
