Rails.application.routes.draw do
  get '/', to: 'welcome#home'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/auth/:provider/callback', to: 'sessions#create'
  root 'welcome#home'
end
