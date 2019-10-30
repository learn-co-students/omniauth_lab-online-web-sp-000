Rails.application.routes.draw do
  
  get '/auth/facebook/callback' => 'sessions#create'
  root 'welcome#home'
  get 'welcome/home' => 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
