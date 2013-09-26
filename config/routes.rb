WaitingRoom::Application.routes.draw do
  
  get "tutorial/one"
  get "tutorial/two"
  get "tutorial/three"
  get "tutorial/four"
  root 'site#welcome'

  get 'beta', to: 'site#beta', as: 'beta'
  get 'signup', to: 'docs#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :docs
  resources :users
  resources :sessions
  resources :questions
  resources :answers

  get "/welcome" => 'site#welcome'

end
