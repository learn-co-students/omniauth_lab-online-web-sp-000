Rails.application.routes.draw do
  root 'welcome#home'
  # Add your routes here
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
