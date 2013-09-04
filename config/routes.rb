WaitingRoom::Application.routes.draw do


  root 'site#welcome'

  resource :doctors

  resource :users

  resource :questions
  get "/qindex" => 'questions#index', as: "qindex"

  resource :answers

  get "/welcome" => 'site#welcome'

end
