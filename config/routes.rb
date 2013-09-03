WaitingRoom::Application.routes.draw do

  root 'site#welcome'

  resource :doctors

  resource :users

  get "/welcome" => 'site#welcome'

end
