Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end


#use OmniAuth::Builder do
#  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
#end
# GITHUB_KEY=33...
#GITHUB_SECRET=519...
