Rails.application.routes.draw do
  root 'welcome#home'
  # we need to provide a route for the providers' strategies to "call back" to after the authenticating third-party decides whether the user has passed or failed authentication.
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end