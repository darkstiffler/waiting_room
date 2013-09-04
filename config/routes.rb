WaitingRoom::Application.routes.draw do


  root 'site#welcome'

  resources :doctors

  resources :users

  resources :questions

  resources :answers

  get "/welcome" => 'site#welcome'

end
