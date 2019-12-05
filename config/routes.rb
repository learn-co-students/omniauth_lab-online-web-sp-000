Rails.application.routes.draw do
  # Add your routes here
  get '/auth/facebook/callback' => 'sessions#create'
end
