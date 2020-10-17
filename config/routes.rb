Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
end
