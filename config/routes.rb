Rails.application.routes.draw do
  # Add your routes here
  match '/app/github/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
end

