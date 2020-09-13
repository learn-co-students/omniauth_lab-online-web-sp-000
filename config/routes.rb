Rails.application.routes.draw do
  # Add your routes here
  get '/' => 'welcome#home'
  get '/auth/github/callback' => 'sessions#create'
end
