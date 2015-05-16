Rails.application.routes.draw do

  root 'mainframe#home'

  get '/login' => 'mainframe#login'

  post '/mainframe' => 'mainframe#mainframe'

  get '/fail' => 'mainframe#fail'

end
