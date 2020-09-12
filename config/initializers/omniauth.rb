Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github unless Rails.env.production?
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  # provider :github, ENV['Something GitHub-related'], ENV['Something else GitHub-related']
end
