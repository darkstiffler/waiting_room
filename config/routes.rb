WaitingRoom::Application.routes.draw do
  root 'site#welcome'
  resources :docs
  resources :doctors
  resources :users
  resources :sessions
  resources :questions
  resources :answers
  get "/welcome" => 'site#welcome'

end
