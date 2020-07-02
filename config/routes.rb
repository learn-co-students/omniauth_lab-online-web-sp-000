Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get "/welcome/home", to: "welcome#home"
  get "/logout", to: "sessions#logout"
  root 'welcome#home'
end
