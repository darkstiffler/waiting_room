WaitingRoom::Application.routes.draw do


  get "session/new"
  get "session/create"
  get "session/destroy"
  root 'site#welcome'

  resources :doctors

  resources :users

  resources :questions

  resources :answers

  get "/welcome" => 'site#welcome'

end
