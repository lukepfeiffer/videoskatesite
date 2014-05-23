VideoSite::Application.routes.draw do
  resources :users

  root 'pages#home'

  get '/notnice', to: 'pages#notnice'
  get '/log_in', to: 'pages#log_in'
end
