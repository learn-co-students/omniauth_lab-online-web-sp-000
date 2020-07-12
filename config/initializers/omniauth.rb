Rails.application.config.middleware.use OmniAuth::Builder do
    #provider :developer unless Rails.env.production?
    provider :github, ENV['4c3938283234aad88dd9'], ENV['a7fc7c3187d3e250ab415947b42fefcc9476241a']
  end