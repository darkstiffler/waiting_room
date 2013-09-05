WaitingRoom::Application.routes.draw do


  get "session/new"
  get "session/create"
  get "session/destroy"

  root 'site#welcome'

  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"

  resources :doctors

  resources :users

  resources :questions

  resources :answers

  get "/welcome" => 'site#welcome'

end
