Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'

  match '/app/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
