Rails.application.routes.draw do
  # Add your routes here

  root "welcome#home"
  delete "/logout", to: "sessions#destroy"

  # from code along - looks like way to create multiple routes from same URL
  match "/auth/developer/callback", to: "sessions#create", via: [:get, :post]
  
  get "/auth/github/callback", to: "sessions#create"
  
  
  # normal route for OmniAuth
  # get "/auth/developer/callback", to: "sessions#create"


end
