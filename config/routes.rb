Rails.application.routes.draw do
  resources :users

  post '/edituser' => 'users#edit'

  post '/login' => 'auth#login'
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"

  post '/makepage' => 'pages#create'
  get '/pages' => 'pages#all'

  post '/deletepage' => 'pages#delete'
  post '/editpage' => 'pages#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
