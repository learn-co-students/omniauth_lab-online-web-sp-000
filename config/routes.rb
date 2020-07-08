Rails.application.routes.draw do
  # Add your routes here
  get '/welcome/home', to: 'welcome#home'
  get '/', to: 'welcome#home'
end
