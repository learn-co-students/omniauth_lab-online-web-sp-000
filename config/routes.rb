Rails.application.routes.draw do
  match '/auth/:developer/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
end
