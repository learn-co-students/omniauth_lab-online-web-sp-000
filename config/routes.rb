Rails.application.routes.draw do

  root 'welcome#home'


  get 'home', to: 'welcome#home' 
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]


end
