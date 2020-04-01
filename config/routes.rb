Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  # match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/app/github/callback' => 'sessions#create'
end
