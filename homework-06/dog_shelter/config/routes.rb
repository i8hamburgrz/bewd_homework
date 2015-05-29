Rails.application.routes.draw do
  
  root "dogs#index"

  resources :dogs

  # get "/new" => "dogshelter#new"
  # get "/dogs/:id" => "dogshelter#show"
  # get "/dogs/:id/edit" => "dogshelter#edit"
  # post "/dogs" => "dogshelter#create"
  # patch "/dogs/:id" => "dogshelter#update"
  # delte "/dogs/:id" => "dogshelter#destroy"
end
