Rails.application.routes.draw do
  
  root "dogshelter#index"

  get "/new" => "dogshelter#new"
  get "/dogs/:id" => "dogshelter#show"
  post "/dogs" => "dogshelter#create"

end
