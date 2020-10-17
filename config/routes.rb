Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get '/app/github/callback', to: 'sessions#create'
end
