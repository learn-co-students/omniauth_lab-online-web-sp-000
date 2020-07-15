
#initializers hold configuration settings
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  #the providers are our third party authenticators. :developer is our strategy and below we are saying our strategy is through Github
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']

end
