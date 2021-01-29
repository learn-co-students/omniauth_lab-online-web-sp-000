Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  # get '/auth/github', to: 'sessions#create'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get 'auth/github', to: 'sessions#create'
end
