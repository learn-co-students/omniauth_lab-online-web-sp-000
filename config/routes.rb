Rails.application.routes.draw do
  root 'welcome#home'
  get '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
