Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get 'welcome#home' => 'welcome#home'
  match 'auth/:developer/callback', to: 'sessions#create', via: [:get, :post]

  get 'sessions/delete' => 'sessions#delete'
end
