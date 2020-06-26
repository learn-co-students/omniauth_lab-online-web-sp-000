Rails.application.routes.draw do
  # Add your routes here

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

  root 'welcome#home'
  get '/' => 'welcome#home'
  get '/logout' => 'sessions#destroy'

  get '/auth/github/callback' => 'sessions#create'

end
