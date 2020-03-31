Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  end
  #The name "initializer" suggests that they're used to set up Rails when we start it
  #Inside the block, we see that we're telling the Rails application to use a thing 
  #called OmniAuth::Builder which, inside of its block, adds providers.
  # Providers are our authenticating third-parties.
  # Each provider has a strategy.
  # In the snippet above, we're saying "let's use the developer strategy."
  # We commented out the twitter strategy because we won't use it in this lab
