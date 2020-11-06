Rails.application.routes.draw do
  get '/auth/github/callback', to: 'sessions#create'
  root 'welcome#home'
  # get '/app/github/callback', to: 'sessions#create'
end
