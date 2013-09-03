WaitingRoom::Application.routes.draw do

  get "doctor/index"
  get "doctor/show"
  get "doctor/new"
  get "doctor/create"
  get "doctor/update"
  get "doctor/delete"
  get "user/index"
  get "user/show"
  get "user/new"
  get "user/create"
  get "user/update"
  get "user/edit"
  get "user/delete"
  get "/welcome" => 'site#welcome'

  root 'site#welcome'
end
