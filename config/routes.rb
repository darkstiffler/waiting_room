WaitingRoom::Application.routes.draw do


  root 'site#welcome'

  resource :doctors

  resource :users

  resource :questions

  resource :answers

  get "/welcome" => 'site#welcome'

end
