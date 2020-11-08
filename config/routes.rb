Rails.application.routes.draw do
  # Add your routes here
  
  match '/app/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '', to: 'welcome#home', as: 'root'
end
