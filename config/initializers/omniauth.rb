Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, ENV['1023f5c053c10796d1fa'], ENV['276af2999bece58f8c5eb52d40d587e510a036b8']
  end