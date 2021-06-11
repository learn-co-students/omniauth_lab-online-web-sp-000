Rails.application.routes.draw do
  match '/auth/:github/callback', to: 'sessions#create', via: [:get, :post]
  get '/logout' => 'sessions#logout'
  
  root 'welcome#home'
end
