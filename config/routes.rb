Rails.application.routes.draw do
  match '/app/:github/callback', to: 'sessions#create', via: [:get, :post]
  root to: "welcome#home"
  post '/logout', to: "sessions#destroy"
end