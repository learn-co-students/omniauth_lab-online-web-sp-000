Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get '/login' => 'sessions#new'
  match '/auth/github/callback', to: 'sessions#create', via: [:get, :post] 
end
