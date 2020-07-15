class ApplicationController < ActionController::Base
  #rack middleware
  # use Rack::Session::Cookie
  # use OmniAuth::Strategies::Developer
  #
  # config.session_store :cookie_store, key: '_interslice_session'
  # config.middleware.use ActionDispatch::Cookies # Required for all session management
  # config.middleware.use ActionDispatch::Session::CookieStore, config.session_options
end
