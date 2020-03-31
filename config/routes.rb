Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
 # get '/auth/developer/callback', to: 'sessions#create', via: [:get, :post]
 match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]end
#we need to provide a route for the providers' strategies to "call back" to after
# the authenticating third-party decides whether the user has passed or failed authentication
# this rout it's a single line that's flexible enough to work for both the developer and github strategies
