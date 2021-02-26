Rails.application.routes.draw do
  # Add your routes here
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get 'welcome/home' => 'welcome#home'
  root 'welcome#home'

end
