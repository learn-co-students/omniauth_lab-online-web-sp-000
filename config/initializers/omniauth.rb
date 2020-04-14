Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :github, ENV['56178d00facd75508d60'], ENV['9a58cd8075a0a0bb4b8f3ce29ec4c961019db0d6']
end