Rails.application.routes.draw do
  root 'welcome#home'
  match '/auth/:github/callback', to: 'sessions#create', via: [:get, :post]
  #post '/auth/developer', to: 'welcome#home'#sessions#create'
end
