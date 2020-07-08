Rails.application.routes.draw do
  # Add your routes here

  get '/', to: 'welcome#home'

  get '/welcome/home', to: 'welcome#home'

  get '/logout', to: 'sessions#destroy'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
