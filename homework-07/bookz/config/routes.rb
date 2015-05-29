Rails.application.routes.draw do

  root 'home#home'
  resources :books
  resources :authors
end
