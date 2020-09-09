Rails.application.routes.draw do
  # Add your routes here
  get '/' => 'welcome#home'
  resources :welcome
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
