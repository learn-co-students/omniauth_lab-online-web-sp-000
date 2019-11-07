Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, ENV['213cb3a68cd1bb0ebc5b'], ENV['d56fca5763a065b2191e1944ca5a1af275418d22']
end
