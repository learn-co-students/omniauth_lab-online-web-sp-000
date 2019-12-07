Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#home'

  get '/home' => 'welcome#home'

  resources :sessions
  resources :users 

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

end
