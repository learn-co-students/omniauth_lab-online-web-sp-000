Rails.application.routes.draw do

  # Add your routes here
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/logout', to: 'sessions#destory'
  root 'welcome#home'
end
