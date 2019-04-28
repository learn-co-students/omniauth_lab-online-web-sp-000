class SessionsController < ApplicationController
  def create
     @user = User.find_or_create_from_auth_hash(auth_hash)
     current_user(@user)
     @auth = auth_hash
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :uid, :provider)
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end
