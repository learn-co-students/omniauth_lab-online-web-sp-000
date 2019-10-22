Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '247632982388118', '01ab234567890c123d456ef78babc901'
  end