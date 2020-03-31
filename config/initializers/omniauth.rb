Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :github, ENV['44180d1d15a48fe15151'], ENV['b1b65320a8f96f3fbf1d730863dd7f3a69acfc23']
  end