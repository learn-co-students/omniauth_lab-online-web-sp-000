Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  # We commented out the twitter strategy because we won't use it in this lab. Nevertheless, we're leaving it to show you that we can establish a decent hypothesis about what other providers' configurations will look like. GitHub's will probably be provider :github, ENV['Something GitHub-related'], ENV['Something else GitHub-related']. This winds up being exactly true.
end