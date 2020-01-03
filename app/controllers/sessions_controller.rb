class SessionsController < ApplicationController
  # This is required because of a quirk the "developer" authentication
  # strategy. We'll remove this when we move to a "real" provider.
  skip_before_action :verify_authenticity_token, only: :create
  
  def create
    user = User.find_or_create_by(:uid => auth['uid']) do |user|
      user.name = auth['info']['name']
    end
    session[:user_id] = user.try(:id)
  end

  def auth
    request.env['omniauth.auth']
  end

end
