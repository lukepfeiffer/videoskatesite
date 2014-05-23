VideoSite::Application.routes.draw do
  resources :users
  resources :videos

  root 'pages#home'

  get '/notnice', to: 'pages#notnice'
  get '/log_in', to: 'pages#log_in'

  post '/sign_in', to: 'sessions#create'

  delete '/log_out', to: 'sessions#destroy'
end
