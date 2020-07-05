Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :github, ENV['d13aa03885f77d91621e'], ENV['7f5166bb9ae6979aa8888ee5b06d2536cb9b4a83']
end