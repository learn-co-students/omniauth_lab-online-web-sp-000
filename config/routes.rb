Rails.application.routes.draw do
  root 'welcome#home'

  get '/auth/facebook/callback' => 'sessions#create' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
