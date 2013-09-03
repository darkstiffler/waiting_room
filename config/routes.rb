WaitingRoom::Application.routes.draw do

  get "user/index"
  get "user/show"
  get "user/new"
  get "user/create"
  get "user/update"
  get "user/edit"
  get "user/delete"
  get "/login" => 'site#login'

  root 'site#login'
end
