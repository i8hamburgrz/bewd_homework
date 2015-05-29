Rails.application.routes.draw do
  root 'galleries#index'

  resources :galleries
  resources :photos
end
