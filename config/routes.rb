Rails.application.routes.draw do
  # Add your routes here
  match '/auth/github/callback', to: 'sessions#create', via: [:get, :post]

  root 'welcome#home'
  get '/welcome/home', to: 'welcome#home'

end
