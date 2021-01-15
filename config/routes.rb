Rails.application.routes.draw do
  root 'welcome#home'
  match '/auth/:provider/callback' => 'sessions#create', via: [:get,:post]
  get '/logout' => 'sessions#destroy' 
end
