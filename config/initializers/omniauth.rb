Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :github, ENV['1d04fd133846db38a83a'], ENV['bb08f5e041527c3839a0d75288b8fcfe6866a273']
end
