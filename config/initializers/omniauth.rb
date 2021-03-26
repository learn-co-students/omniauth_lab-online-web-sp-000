Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer , {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}} unless Rails.env.production?
     #provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  end